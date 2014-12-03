#!/usr/env  ruby

require 'nokogiri'
require 'fileutils.rb'
require 'net/http'
require 'curb'
require 'json'
require 'html2markdown'

API_KEY = '<Your API key>'

class Codewars

  attr_reader :uri, :response, :links

  def initialize
    http = Curl.get("https://www.codewars.com/api/v1/users/noku?access_key=#{API_KEY}")
    @response = JSON.parse http.body_str
    access_links
  end

  def main_body
    File.read "user_source.html"
  end

  def generate_file
    tmp = @links.inject("") { |str,resp| str << construct_string(resp) }
    save_to_file "./generated/README.md", tmp
  end

  def generate_nested
    generate_readme
    @links.each { |resp| save_to_file("./generated/#{resp['rank']['name']}/#{resp['name']}/README.md", construct_string(resp)) }
  end

  def generate_readme
    @links.group_by { |res| res['rank']['name'] }.each do |rank,res|
      save_to_file "./generated/#{rank}/README.md", generate_string(res)
    end
  end

  def generate_string links
    links.inject("") { |str,resp| str << construct_readme(resp) }
  end

  def construct_string ch
    res = ""
    res << "## #{ch['name']}\n"
    res << "[#{ch['name']}](#{ch['url']})\n"
    res << "Category : #{ch['category']}\n\n"
    res << "### Description \n\n"
    res << HTMLPage.new(contents: ch['description']).markdown 
    res << "\n\n### Tags \n"
    res << ch['tags'].join("; ") 
    res << "\n- - -\n"
    res
  end

  def construct_readme ch
    # "- **#{ch['rank']['name']}** #{ch['name']} [#{ch['name']}](#{ch['url']})\n"
    "- #{ch['name']} [#{ch['name']}](#{ch['url']})\n"
  end

  def adress_links
    exercises = Nokogiri::HTML(main_body)
    exercises.css(".list-item > div.eight > div.info-row").map { |link| link['data-id'] }
  end

  def access_links
    @links = adress_links.map { |link| challenge_response link }
  end

  def challenge_response link
    http = Curl.get("https://www.codewars.com/api/v1/code-challenges/#{link}")
    JSON.parse(http.body_str)
  end

  def save_to_file(path, data)
    dirname = File.dirname(path)
    FileUtils.mkdir_p(dirname) unless File.directory?(dirname)
    file = File.new(path, 'wb')
    file.puts(data)
    file.close
  end

end

Codewars.new.generate_nested

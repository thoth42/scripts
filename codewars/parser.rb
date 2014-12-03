#!/usr/env  ruby

require 'nokogiri'
require 'fileutils.rb'
require 'curb'
require 'json'
require 'html2markdown'

module Codewars

  PATH = './generated'
  SOURCE = 'user_source.html'
  API_KEY = '<Your API key>'

  class Parser

    def initialize
      katas = links_info
      @generator = Saver.new(katas)
    end

    def links_info
      link_ids.map { |id| request_kata_by id }
    end

    def distributed_save
      @generator.save_nested
    end

    private

    def link_ids
      Nokogiri::HTML(main_body).css(".list-item>div.eight>div.info-row").map { |link| link['data-id'] }
    end

    def request_kata_by id
      http = Curl.get "https://www.codewars.com/api/v1/code-challenges/#{id}"
      JSON.parse http.body_str
    end

    def main_body
      File.read SOURCE
    end
  end

  class Saver

    def initialize katas
      @katas = katas
    end

    def save_nested
      save_readmes
      @katas.each do |kata|
        save_to_file nested_path(kata), MarkdownGen.contents_for(kata)
      end
    end

    def save_readmes
      @katas.group_by { |res| res['rank']['name'] }.each do |rank, kata|
        save_to_file "#{PATH}/#{rank}/README.md", MarkdownGen.one_line_content_for(kata)
      end
    end

    private

    def nested_path kata
      "#{PATH}/#{kata['rank']['name']}/#{kata['name']}/README.md"
    end

    def save_to_file path, data
      dirname = File.dirname path
      FileUtils.mkdir_p(dirname) unless File.directory?(dirname)
      file = File.new(path, 'wb')
      file.puts data
      file.close
    end

  end

  class MarkdownGen

    def self.contents_for kata
      res = []
      res << "## #{kata['name']}"
      res << "[#{kata['name']}](#{kata['url']})"
      res << "Category : #{kata['category']}"
      res << "\n### Description"
      res << gen_markdown_for(kata['description'])
      res << "\n### Tags"
      res << kata['tags'].join("; ")
      res << "\n- - -"
      res.join("\n")
    end

    def self.one_line_content_for katas
      katas.map { |kata| gen_one_line_markdown_for(kata) }.join("\n")
    end

    def generate_file katas
      save_to_file "#{PATH}/README.md", katas.map { |kata| contents_for(kata) }.join("\n")
    end

    private

    def self.gen_markdown_for description
      HTMLPage.new(contents: description).markdown
    end

    def self.gen_one_line_markdown_for kata
      "- #{kata['name']} [#{kata['name']}](#{kata['url']})"
    end

  end
end

Codewars::Parser.new.distributed_save

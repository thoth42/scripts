## Image Downloader

It is a small script that uses `mechanize` gem for downloading images.
First it login the user with given credentials then it access the main
page of given id, and due to the arhitecture of the website it access 
several web pages before it can download the image with the highest quality.
It downloades all image of the source id even if the website page is paginated.

There some improvements to be made from UI side but the purpose of making this 
script was improving the programming skills in ruby language.

```
$ ruby mini.rb username password folder_name id
```

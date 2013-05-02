#coding:utf-8
$:.unshift(File.dirname(__FILE__))

require "open-uri"
require 'nokogiri'

module GDogist
  class Searcher
    def initialize(word)
      @word = word
    end

    def search 
      uri = "https://google.com/search?q=#{@word}"
      doc = Nokogiri::HTML(open(uri))
      doc.css('h3.r a').each do |link|
        p link.attribute("href").value
        puts link.content
      end
    end
  end 
end


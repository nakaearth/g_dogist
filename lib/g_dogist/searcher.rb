#coding:utf-8
$:.unshift(File.dirname(__FILE__))

require "open-uri"
require 'nokogiri'
require 'g_dogist/gem_data'

module GDogist
  class Searcher
    def initialize(word)
      @uri_word = word.encode("UTF-16BE", "UTF-8",
                              invalid: :replace,
                              undef: :replace,
                              replace: '.').encode("UTF-8")
    end

    def search 
      uri = "https://google.com/search?q=#{@uri_word}"
      doc = Nokogiri::HTML(open(uri))
      @result = @uri_word
      doc.css('h3.r a').each do |link|
        p link.attribute("href").value
        puts link.content
        #@result << "reference site:" << link.content << link.attribute("href").value << "\n"
        #p @result
      end 
      @result
    end
  end 
end


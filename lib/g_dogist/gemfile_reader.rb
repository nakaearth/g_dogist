#coding: utf-8
$:.unshift(File.dirname(__FILE__))

module GDogist
  class GemfileReader
    def initialize(file)
      @gemfile = file || "Gemfile"
    end
  
    def gem_list
      gems = {}
      File.open(@gemfile) do |f|
        gems = f.read.scan(/gem\s.*/)
      end
      gems
    end
  end
end 


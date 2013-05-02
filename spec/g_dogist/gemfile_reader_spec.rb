require 'spec_helper'
#require File.expand_path(File.join(File.dirname(__FILE__)))

describe "GDogist::GemfileReader test." do
  describe "reader  method" do
    context "success" do
      it "test " do
        reader = GDogist::GemfileReader.new("/usr/local/project/sharetaskboard/Gemfile")
        p reader.gem_list
      end
    end
  end

end


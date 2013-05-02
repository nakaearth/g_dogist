require 'spec_helper'
#require File.expand_path(File.join(File.dirname(__FILE__)))

describe "GDogist::Searcher test." do
  describe "search method" do
    context "success" do
      it "test " do
        search = GDogist::Searcher.new("rails")
        p search.search
      end
    end
  end

end


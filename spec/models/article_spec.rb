require 'spec-helper'


describe Article do

  describe "set up an article"
    before do
      @article_link = "http://www.nytimes.com/2014/06/19/movies/bamcinemafest-showcases-indie-films.html?partner=rss&emc=rss&_r=0"
    end


    it "should parse articles" do
      Article.parse(@article_link)

  end
end


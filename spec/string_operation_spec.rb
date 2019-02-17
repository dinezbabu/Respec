require './word_count'
require 'rspec'

describe "WordCount" do
  context "counting Words" do
    it "can count 3 words" do
      wc = WordCount.new("one two three")
      expect(wc.results).to eql 3
    end

    it "can count 4 words" do
      wc = WordCount.new("one two three four")
      expect(wc.results).to eql 4
    end
  end
end
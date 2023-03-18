require 'grammar_stats'

RSpec.describe GrammarStats do
  context "Given an empty string" do
    it "results an error" do
    text_stats = GrammarStats.new
      expect { text_stats.check("") }.to raise_error "No text provided."
    end
  end

  context "With not strings checked yet" do
    it "to raise an error" do
      text_stats = GrammarStats.new
      expect { text_stats.percentage_good }.to raise_error "No texts checked yet."
    end
  end

  context "Given a first sentence" do
    it "returns true for sentence with capital and full stop" do
      text_stats = GrammarStats.new
      result = text_stats.check("A simple string.")
      expect(result).to eq true
    end

    it 'returns false for sentence with wrong closing punctuation' do
      text_stats = GrammarStats.new
      result = text_stats.check("This is my list:")
      expect(result).to eq false
    end

    it 'returns false for no first letter capitalised"' do
      text_stats = GrammarStats.new
      result = text_stats.check("this is a sentence.")
      expect(result).to eq false
    end

    it "returns 0 as first sentence checked was not sentence" do
      text_stats = GrammarStats.new
      text_stats.check("this is a sentence.")
      result = text_stats.percentage_good
      expect(result).to eq 0
    end

    it "returns 100 as first sentence checked was a sentence" do
      text_stats = GrammarStats.new
      text_stats.check("This is a sentence.")
      result = text_stats.percentage_good
      expect(result).to eq 100
    end
  end

  context "given multiple sentences consecutively" do
    it "returns 50 as second sentence is false and first true" do
      text_stats = GrammarStats.new
      text_stats.check("This is a sentence.")
      text_stats.check("This is not a sentence")
      result = text_stats.percentage_good
      expect(result).to eq 50
    end

    it "returns 33 as true:false ratio is 1:2" do
      text_stats = GrammarStats.new
      text_stats.check("this is not a sentence.")
      text_stats.check("This is a sentence.")
      text_stats.check("This is not a sentence")
      result = text_stats.percentage_good
      expect(result).to eq 33
    end

    it "returns 75 as true:false ratio is 3:1" do
      text_stats = GrammarStats.new
      text_stats.check("This is a sentence.")
      text_stats.check("This is a sentence.")
      text_stats.check("This is not a sentence")
      text_stats.check("Ninya is the best.")
      result = text_stats.percentage_good
      expect(result).to eq 75
    end
  end
end
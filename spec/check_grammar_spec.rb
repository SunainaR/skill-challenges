require "check_grammar"

RSpec.describe "Check Grammar Method" do
  context "Given an empty string" do
    it "throws an error" do
      expect { check_grammar("") }.to raise_error "Not a sentence."
    end
  end
  context "Given a string with multiple words" do
    it 'return true for "This is a sentence."' do
      result = check_grammar("This is a sentence.")
      expect(result).to eq true
    end
    it 'return true for "This is a Sentence?"' do
      result = check_grammar("This is a Sentence?")
      expect(result).to eq true
    end
    it 'return true for "THIS is a sentence!"' do
      result = check_grammar("THIS is a sentence!")
      expect(result).to eq true
    end
    it 'return true for no capital or closing punctuation' do
      result = check_grammar("this is a sentence")
      expect(result).to eq false
    end
    it 'return false for no first letter capitalised"' do
      result = check_grammar("this is a sentence.")
      expect(result).to eq false
    end
    it 'return false for sentence without a full stop' do
      result = check_grammar("This is a sentence")
      expect(result).to eq false
    end
    it 'return false for sentence that is a list with comma at end' do
      result = check_grammar("this, is, a, list,")
      expect(result).to eq false
    end
    it 'return false for sentence with wrong closing punctuation' do
      result = check_grammar("This is my list:")
      expect(result).to eq false
    end
    it 'return false for sentence with an ellipsis as closing punctuation' do
      result = check_grammar("This is a sentence...") 
      expect(result).to eq true
    end
  end
end



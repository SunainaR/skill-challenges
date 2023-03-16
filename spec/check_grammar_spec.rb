require "check_grammar"

RSpec.describe "Check Grammar Method" do
  context "Given an empty string" do
    it "throws an error" do
      expect { check_grammar("") }.to raise_error "Not a sentence."
    end
  end
  context "Given a string with multiple words" do
    it "return true for 'This is a sentence.'" do
      result = check_grammar("This is a sentence.")
      expect(result).to eq true
    end
  end
end



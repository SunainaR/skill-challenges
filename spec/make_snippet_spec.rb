require 'make_snippet'

RSpec.describe "make_snippet method" do
  context "given an empty string" do
    it "Return an empty string" do
      expect(make_snippet("")).to eq ""
    end
  end
  context "given a string of multiple words" do
    it "Return 4 words" do
      result = make_snippet("one two three four")
      expect(result).to eq "one two three four"
    end
    it "returns elipsis for 6 words" do
      result = make_snippet("one two three four five six")
      expect(result).to eq "one two three four five..."
    end
    it "Return 5 words" do
      result = make_snippet("one two three four five")
      expect(result).to eq "one two three four five"
    end
  end
end


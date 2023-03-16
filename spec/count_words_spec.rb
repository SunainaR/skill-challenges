require 'count_words'

RSpec.describe "count_words method" do
  it "takes an empty string and returns 0" do
    result = count_words("")
    expect(result).to eq 0
  end

  it "Returns number of words for string" do
    result = count_words("The dog is called Sirius")
    expect(result).to eq 5
  end

  it "Returns number of words for a string with punctuation" do
    result = count_words("The dog is called Sirius!")
    expect(result).to eq 5
  end

  it "Returns number of words for a string with punctuation with whitespace" do
    result = count_words("The dog is called - Sirius!")
    expect(result).to eq 5
  end

  it "Returns number of words for a string with numbers and double punctuation" do
    result = count_words("The dog is 3 called -- Sirius!")
    expect(result).to eq 6
  end

  it "returns an error message for a non-string" do
    expect { count_words(123) }.to raise_error RuntimeError
  end
end
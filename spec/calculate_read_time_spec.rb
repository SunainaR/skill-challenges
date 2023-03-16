require 'calculate_read_time'

RSpec.describe "calculate_read_time method" do
  it "With empty string returns 0 reading time" do
    result = calculate_read_time("", 200)
    expect(result).to eq "Estimated read time in seconds: 0"
  end
  it 'returns read time for a two word string "Simple text"' do
    result = calculate_read_time("Simple text", 200)
    expect(result).to eq "Estimated read time in seconds: 1"
  end
  it 'returns read time for a longer string with punctuation' do
    result = calculate_read_time("This is the longest text you will ever read!", 200)
    expect(result).to eq "Estimated read time in seconds: 3"
  end
  it 'returns read time for a longer string with longer string' do
    result = calculate_read_time("This is my autobiography. I was born in 1586 and lived in a cottage by a river - the River Blob. Then left when I was fifty years old...", 200)
    expect(result).to eq "Estimated read time in seconds: 9"
  end
  it 'returns read time for a 500 word string' do
    result = calculate_read_time("word " * 500, 200)
    expect(result).to eq "Estimated read time in seconds: 150"
  end
  it 'returns read time for a 6000 word string' do
    result = calculate_read_time("word " * 6000, 200)
    expect(result).to eq "Estimated read time in seconds: 1800"
  end
end
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
end
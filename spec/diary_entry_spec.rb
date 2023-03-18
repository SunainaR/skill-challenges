require 'diary_entry'

RSpec.describe DiaryEntry do
  context "For two methods to return data in title and contents variables" do
    it "returns the title of a DiaryEntry" do
      entry = DiaryEntry.new("First Day", "I read a book.")
      result = entry.title
      expect(result).to eq "First Day"
    end

    it "returns the contents of a DiaryEntry" do
      entry = DiaryEntry.new("First Day", "I read a book.")
      result = entry.contents
      expect(result).to eq "I read a book."
    end
  end

  context "For count_words method" do
    it "returns the word_count of a DiaryEntry" do
      entry = DiaryEntry.new("First Day", "I read a book.")
      result = entry.count_words
      expect(result).to eq 4
    end
  end

  context "For reading_time method" do
    it "returns the reading_time for the entire contents" do
      entry = DiaryEntry.new("First Day", "one " * 2000)
      entry.count_words
      result = entry.reading_time(200)
      expect(result).to eq 10
    end
  end

  context "For reading_chunk method" do
    xit "returns " do
      entry = DiaryEntry.new("First Day", (("one " * 400) + ("two " * 200) + ("three " * 400 )+ ("four " * 1000)))
      entry.count_words
      entry.reading_time(200)
      result = entry.reading_chunk(100, 5)
      expect(result).to eq (("one " * 400) + ("two " * 100))
    end
  end
end



=begin
# Old code from step 5 - test driving a class

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
    it "returns " do
      entry = DiaryEntry.new("First Day", (("one " * 400) + ("two " * 200) + ("three " * 400 )+ ("four " * 1000)))
      entry.count_words
      entry.reading_time(200)
      result = entry.reading_chunk(100, 5)
      expect(result).to eq (("one " * 400) + ("two " * 100)).strip
    end
    it "returns a chunk to read after calling reading chunk twice before end of contents" do
      entry = DiaryEntry.new("First Day", (("one " * 400) + ("two " * 200) + ("three " * 400 )+ ("four " * 1000)))
      entry.count_words
      entry.reading_chunk(100, 5)
      result = entry.reading_chunk(200, 2)
      expect(result).to eq (("two " * 100)+("three " * 300)).strip
    end
    it "returns a chunk to read just until end of contents even though have more time to read" do
      entry = DiaryEntry.new("First Day", (("one " * 400) + ("two " * 200) + ("three " * 400 )+ ("four " * 1000)))
      entry.count_words
      entry.reading_chunk(100, 4)
      entry.reading_chunk(100, 15)
      result = entry.reading_chunk(200, 1)
      expect(result).to eq ("four " * 100).strip
    end
    it "returns a chunk to read from beginning as reached end of text previously" do
      entry = DiaryEntry.new("First Day", (("one " * 400) + ("two " * 200) + ("three " * 400 )+ ("four " * 1000)))
      entry.count_words
      entry.reading_chunk(100, 4)
      entry.reading_chunk(100, 15)
      entry.reading_chunk(200, 1)
      result = entry.reading_chunk(200, 3)
      expect(result).to eq (("one " * 400) + ("two " * 200)).strip
    end
  end
end

=end
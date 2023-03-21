require 'diary'
require 'diary_entry'

RSpec.describe "diary integration" do
  it "return the list of diary entries" do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("title1", "Contents of the Entry 1")
    diary_entry2 = DiaryEntry.new("title2", "Contents of the Entry 2")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    result = diary.all
    expect(result).to eq [diary_entry1, diary_entry2]
  end

  describe "word counting behaviour" do
    it "return the list of diary entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("title1", "Contents of the Entry 1")
      diary_entry2 = DiaryEntry.new("title2", "Contents of the Entry 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      result = diary.count_words
      expect(result).to eq 10 
    end
  end

  describe "reading time behaviour" do
    it "return the list of diary entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("title1", "Contents of the Entry 1")
      diary_entry2 = DiaryEntry.new("title2", "Contents of the Entry 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      result = diary.reading_time(5)
      expect(result).to eq 2
    end
      it "returns nil as one entry and unreadable in the time" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("title1", "Contents of the Entry 1")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
    end
    context "where we have multiple entries" do
      it "returns the longest entry user could read in time" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("title1", "one")
        best_entry = DiaryEntry.new("title2", "one " * 5)
        diary_entry2 = DiaryEntry.new("title1", "one" * 100)
        diary.add(diary_entry1)
        diary.add(best_entry)
        diary.add(diary_entry2)
        result = diary.find_best_entry_for_reading_time(5, 1)
        expect(result).to eq best_entry
      end
    end
  end
end
  



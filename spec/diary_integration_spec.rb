require 'diary'
require 'diary_entry'

RSpec.describe "diary integration" do
  context "when we add multiple entries to the diary and check entries" do
    it "return the list of diary entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("title1", "Contents of the Entry 1")
      diary_entry2 = DiaryEntry.new("title2", "Contents of the Entry 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      result = diary.all
      expect(result).to eq [diary_entry1, diary_entry2]
    end
  end
end
  



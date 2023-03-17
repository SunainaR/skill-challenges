require 'diary_entry'

RSpec.describe DiaryEntry do
  context "For two methods to return variables" do
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
end
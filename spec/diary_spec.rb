require 'diary'

RSpec.describe Diary do
  context "initally" do
    it "is empty and returns an empty list" do
      diary = Diary.new
      result = diary.all
      expect(result).to eq []
    end
  end
end
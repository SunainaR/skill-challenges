# File: lib/diary.rb
class Diary
  def initialize
    @diary_summary = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    # returns nothing
      @diary_summary << entry
  end

  def all
    # Returns a list of instances of DiaryEntry
    @diary_summary
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
=begin
    @diary_summary.map do |diary_entry|
      diary_entry.count_words
    end.inject(:+)
    # could just use .sum
=end
    #refactored - means that sum will go through all entries in diary_summary list, call the method count_words and then add it up
    return @diary_summary.sum(&:count_words)
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
    return (count_words/wpm.to_f).round
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    readable_entries(wpm, minutes).max_by do |entry|
      entry.count_words
    end
  end

  private 
  def readable_entries(wpm, minutes)
   return @diary_summary.filter do |diary_entry|
      diary_entry.reading_time(wpm) <= minutes
   end
  end
end
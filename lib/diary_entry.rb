# File: lib/diary_entry.rb
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end



=begin
# old code from step 5 test driving a class

class DiaryEntry
  # The are all initialised when the object of this class is first created. 
  # So when methods are called, they could change the state of these instance variables.
  def initialize(title, contents) # title, contents are @contentsings
    @title = title
    @contents = contents
    @word_count
    @previously_read_index = 0 
  end

  def title
  # Returns the title as a string
    @title
  end

  def contents
# Returns the contents as a string
    @contents
  end

  def count_words
# Returns the number of words in the contents as an integer
      @word_count = @contents.split.length
  end

  def reading_time(wpm) 
# wpm is an integer representing the number of words the
# user can read per minute
# Returns an integer representing an estimate of the reading time in minutes
# for the contents at the given wpm.

    # full_read_time = (@word_count * 60)/wpm.to_f.round
    full_read_time_mins = (@word_count/wpm.to_f).round
  end

  def reading_chunk(wpm, minutes) 

    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning

    # @previously_read_index.nil? ? @previously_read_index = 0 : @previously_read_index
    readable_length = wpm * minutes
    next_read_index = @previously_read_index + readable_length
    chunk_to_read = @contents.split[@previously_read_index...next_read_index].join(" ").strip
    next_read_index >= self.count_words ? @previously_read_index = 0 : @previously_read_index = next_read_index
    return chunk_to_read
  end
end


#entry = DiaryEntry.new("First Day", "one " * 500)
entry = DiaryEntry.new("First Day", (("one " * 400) + ("two " * 200) + ("three " * 400 )+ ("four " * 1000)))
p entry.count_words
p entry.reading_time(100)
p entry.reading_chunk(100, 5) 

entry = DiaryEntry.new("First Day", (("one " * 400) + ("two " * 200) + ("three " * 400 )+ ("four " * 1000)))
entry.count_words
entry.reading_chunk(100, 5)
p entry.reading_chunk(200, 2)
=end
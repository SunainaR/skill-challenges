class DiaryEntry
  def initialize(title, contents) # title, contents are @contentsings
    @title = title
    @contents = contents
    @word_count
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
      @word_count = @contents.split.length
  end

  def reading_time(wpm) 
    # full_read_time = (@word_count * 60)/wpm.to_f.round
    full_read_time_mins = (@word_count/wpm.to_f).round
  end

  def reading_chunk(wpm, minutes) 

    (self.reading_time(wpm)/minutes.to_f).round

    # word_position = 0
=begin
    while word_position < self.count_words
     
     

    end
=end

    
    # `wpm` is an integer representing the number
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




#entry = DiaryEntry.new("First Day", "one " * 500)
entry = DiaryEntry.new("First Day", (("one " * 400) + ("two " * 200) + ("three " * 400 )+ ("four " * 1000)))
p entry.count_words
p entry.reading_time(200)
p entry.reading_chunk(100, 2) 
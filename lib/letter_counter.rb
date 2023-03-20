# File: letter_counter.rb

class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(0)
    most_common = nil
    most_common_count = 1
    @text.chars.each do |char|
      #binding.irb
      next unless is_letter?(char)
      counter[char] = (counter[char] || 1) + 1 # find out what this code means
      #binding.irb
      if counter[char] >= most_common_count
        most_common_count = counter[char]
      end
    end
    return counter.select {|char, count| count == most_common_count} 
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end


counter = LetterCounter.new("Digital Punk")
p counter.calculate_most_common

=begin
counter = LetterCounter.new("iDigital Punk")
p counter.calculate_most_common

#Note: doesn't return two most common letter in below example, will only return the first most common: counter = LetterCounter.new("iDigitall Punk")
Changed code to return both
p counter.calculate_most_common
=end

# Intended output:
# [2, "i"]


=begin
# -------- Old Code with bugs ---------

class LetterCounter
  def initialize(text)
    @text = text
  end

  def calculate_most_common()
    counter = Hash.new(1)
    most_common = nil
    most_common_count = 1
    @text.chars.each do |char|
      next unless is_letter?(char)
      counter[char] = (counter[char] || 1) + 1
      if counter[char] > most_common_count
        most_common = char
        most_common_count += counter[char]
      end
    end
    return [most_common_count, most_common]
  end

  private

  def is_letter?(letter)
    return letter =~ /[a-z]/i
  end
end

=end

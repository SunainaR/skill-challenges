def count_words(str)
  if str.is_a? String
    # str.split.length
    string_array = str.split
    new_array =[]
    string_array.each do |word|
      if word =~ /[\w]/
        new_array.push(word)
      end
  end
    new_array.length
  else
    raise "not a string"
  end
end

# count_words(12345)
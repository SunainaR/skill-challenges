def count_words(str)
  if str.is_a? String
    string_array = str.split
    new_array =[]
    string_array.each do |word|
      if word =~ /[\w]/
        new_array.push(word)
      end
  end
    new_array.length
  else
    raise RuntimeError
  end
end



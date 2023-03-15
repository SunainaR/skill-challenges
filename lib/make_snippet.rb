# Takes string as arugment and returns first five words with "..." if there are more

def make_snippet(str)
  string_array = str.split()
 if string_array.length > 5
    first_five_words = string_array[0..4].join(" ")
    first_five_words + "..."
  else
    str
  end
end

# make_snippet("one two three four five six")
def get_most_common_letter(text)
  no_whitespace_text =  text.gsub(/\s+/, "")
  counter = Hash.new(0)
  no_whitespace_text.chars.each do |char|
    #debug: p "char #{char}"
    # debug: p "counter[char] #{counter[char]}"
    counter[char] += 1
  end
  # old code: counter.to_a.sort_by { |k, v| v }[0][0]

  counter.sort_by {|character, count| count}[-1][0]
end

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

# p get_most_common_letter("the roof, the roof, the roof is on fire!")

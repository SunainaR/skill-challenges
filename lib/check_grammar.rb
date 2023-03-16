def check_grammar(text)
  fail "Not a sentence." if text.empty?
  first_letter_is_capital = text[0] == text[0].upcase
  closing_punctuation_exists = [".","...","!","?"].include? text[-1]
  if first_letter_is_capital && closing_punctuation_exists
    true
  else
    false
  end
end
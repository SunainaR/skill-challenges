def check_grammar(text)
  if text.empty?
    fail "Not a sentence."
  else
    true
  end
end
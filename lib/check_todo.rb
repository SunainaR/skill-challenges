def check_todo(text)
  fail "No text provided." if text.empty?
  text.include?("#TODO") ? true : false
end
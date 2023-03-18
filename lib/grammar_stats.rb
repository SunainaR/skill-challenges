class GrammarStats
  def initialize
    @texts_checked = {
      :true => 0,
      :false => 0
      }
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "No text provided." if text.empty?
    first_letter_is_capital = text[0] == text[0].upcase
    closing_punctuation_exists = [".","...","!","?"].include? text[-1]
      if first_letter_is_capital && closing_punctuation_exists
        @texts_checked[:true] +=1
        return true
      else 
        @texts_checked[:false] +=1
        return false
      end
  end

  def percentage_good
    total_texts_checked = @texts_checked.values.sum
    fail "No texts checked yet." if total_texts_checked == 0
    (@texts_checked[:true]/total_texts_checked.to_f * 100).round
  end
end

=begin
text_stats = GrammarStats.new
text_stats.check("This is a sentence.")
text_stats.check("This is a sentence.")
text_stats.check("This is not a sentence")
text_stats.check("Ninya is the best.")
p text_stats.percentage_good
=end
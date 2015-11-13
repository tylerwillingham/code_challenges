################################################################################
# Pangram
#
# A pangram is a sentence that uses all of the letters of the alphabet.
# The following code takes a sentence from stdin and will print 'pangram' if
# the sentence is in fact a pangram. If it is not, it will print 'not pangram'
################################################################################

class SentenceEvaluator
  attr_accessor :sentence

  def initialize(sentence:)
    @sentence = sentence
  end

  def pangram?
    if unique_letters.count == 26
      true
    else
      false
    end
  end

  private

  def unique_letters
    sentence.downcase.scan(/[a-z]/).uniq
  end
end

################################################################################

sentence = gets.chomp

################################################################################

if SentenceEvaluator.new(sentence: sentence).pangram?
  puts 'pangram'
else
  puts 'not pangram'
end

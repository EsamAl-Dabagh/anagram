class Anagram

  def process_word(word)
    word = word.downcase
    word = word.split("")
    word = word.sort
    word = word.join
  end

  def compare(first_word, second_word) 
    return true if first_word == second_word
    false
  end
  
end
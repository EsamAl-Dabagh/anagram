class Anagram

  def process_word(word)
    word = word.downcase
    word = word.split("")
    word = word.sort
    word = word.join
  end
  
end
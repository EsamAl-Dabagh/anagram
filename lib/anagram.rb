require_relative "./word_list.rb"

class Anagram

  def initialize(source = "../anagrams/wordlist.txt", word_list = WordList)
    @source = source
    @word_list = word_list.new(@source)
    @anagram_list = []
  end

  def find(subject_word)
    processed_subject_word = process_word(subject_word)

    @word_list.generate.each do | list_item |
      processed_list_item = process_word(list_item)

      if compare(processed_subject_word, processed_list_item) && subject_word.downcase != list_item.downcase
        @anagram_list << list_item.capitalize
      end

    end

    @anagram_list
  end

  def process_word(word)
    word = word.encode('UTF-8', :invalid => :replace, :undef => :replace)
    word = word.downcase
    word = word.split("")
    word = word.sort
    word = word.join
  end

  def compare(first_word, second_word) 
    return true if first_word == second_word && !@anagram_list.include?(second_word.capitalize)
    false
  end
  
end
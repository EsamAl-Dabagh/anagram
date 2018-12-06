class WordList

  attr_reader :source

  def initialize(source = "../anagrams/wordlist.txt")
    @source = source
  end

  def generate 

    anagrams = []

    File.foreach(@source) do | word |
      anagrams << word.chomp
    end

    anagrams
  end
end
class WordList

  attr_reader :source

  def initialize(source = "../wordlist.txt")
    @source = source
  end
end
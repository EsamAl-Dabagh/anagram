require_relative "../lib/anagram.rb"

describe Anagram do 

  let(:anagram) { 
    described_class.new("../anagrams/spec/support/test-wordlist.txt")
  }

  describe "#find" do
    it "returns array of anagrams" do 
      expect(anagram.find("Race")).to eq(["Care", "Acre"])
    end

    it "empties the array when executed" do
      p anagram.find("Rolof")
      expect(anagram.find("Race")).to eq(["Care", "Acre"])
    end
  end

  describe "#process_word" do
    it "splits up a word, alphabetises, joins it back into a string" do
      expect(anagram.process_word("Race")).to eq("acer")
    end

    it "changes all letters to lowercase" do
      expect(anagram.process_word("RaCeCaR")).to eq("aaccerr")
    end
  end

  describe "#compare" do
    it "returns true when two words are the same" do
      expect(anagram.compare("acer", "acer")).to eq(true)
    end

    it "returns false when the two words are different" do
      expect(anagram.compare("acer", "race")).to eq(false)
    end
  end
end
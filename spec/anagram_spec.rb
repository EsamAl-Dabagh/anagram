require_relative "../lib/anagram.rb"

describe Anagram do 
  let(:anagram) { described_class.new }

  describe "#process_word" do
    it "splits up a word, alphabetises, joins it back into a string" do
      expect(anagram.process_word("Race")).to eq("acer")
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
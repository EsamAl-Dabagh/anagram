require_relative "../lib/anagram.rb"

describe Anagram do 
  let(:anagram) { described_class.new }

  describe "#process_word" do
    it "splits up a word, alphabetises, joins it back into a string" do
      expect(anagram.process_word("Race")).to eq("acer")
    end
  end
end
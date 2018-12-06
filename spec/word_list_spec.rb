require_relative "../lib/word_list.rb"

describe WordList do
  
  let(:word_list) {described_class.new("../anagrams/spec/support/test-wordlist.txt")}

  describe "#generate" do
    it "returns an array of words" do
      test_list = ["Race", "Care", "Cloud", "Acre", "Space", "House", 
        "Trumpet", "Dance", "Floor", "Carpet", "Saxophone", "Stairs"]
      expect(word_list.generate).to eq(test_list)
    end
  end 
end
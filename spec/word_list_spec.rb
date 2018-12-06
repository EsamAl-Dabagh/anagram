require_relative "../lib/word_list.rb"

describe WordList do
  let(:word_list_default) { described_class.new }
  let(:word_list) {described_class.new("../anagrams/spec/support/test-wordlist.txt")}

  it "initializes with a default path to wordlist file" do
    expect(word_list_default.source).to eq("../anagrams/wordlist.txt")
  end

  describe "#generate" do
    it "returns an array of words" do
      test_list = ["Americano", "Americans", "Americas", "Americus"]
      expect(word_list.generate).to eq(test_list)
    end
  end 
end
require_relative "../lib/word_list.rb"

describe WordList do
  let(:word_list) { described_class.new }

  it "initializes with a default path to wordlist file" do
    expect(word_list.source).to eq("../wordlist.txt")
  end
end
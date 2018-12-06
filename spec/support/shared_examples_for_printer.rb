require_relative "../../lib/printer.rb"

shared_examples_for Printer do
  subject(:printer) { described_class.new }

  describe "#output" do
    it "will output each item of array on a new line" do
      anagrams = ["care", "acre", "race"]
      expect{ printer.output(anagrams) }.to output(
        "care\nacre\nrace\n"
        ).to_stdout
    end
  end
end
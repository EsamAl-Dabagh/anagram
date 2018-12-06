require_relative "./support/shared_examples_for_printer.rb"
require_relative "../lib/printer.rb"

class PrinterTest 
  include Printer
end

describe PrinterTest do
  it_behaves_like Printer
end
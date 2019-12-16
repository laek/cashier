
require 'cashier'
require 'item'

describe Scanner do

  it "creates a new instance of the class Scanner" do
    scanner = Scanner.new
    expect(scanner).to be_a Scanner
  end

  it "has a method to scan items" do
    scanner = Scanner.new
    expect(scanner).to respond_to(:scan)
  end

  it "ensures that an item has been scanned" do
    scanner = Scanner.new
    scanner.scan("apple", 0.99)
    expect(scanner.scanned_items.keys).to include "apple"
  end

  it "has a method to show the total of all scanned items" do
    expect(Scanner.new).to respond_to(:show_total)
  end

#  it "shows a total price with proper formatting" do
#    scanner = Scanner.new
#    scanner.scan("apple", 0.99)
#    scanner.scan("almond milk", 1.50)
#    expect(scanner.show_total).to be_a(Numeric)
#  end

  it "ensures the total price is the correct total price for all scanned items with proper formatting" do
    scanner = Scanner.new
    scanner.scan("apple", 0.99)
    scanner.scan("almond milk", 1.50)
    total = 2.49
    expect(scanner.show_total).to eq "£#{total}"
  end
end

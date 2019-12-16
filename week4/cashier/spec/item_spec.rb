require 'cashier'
require 'item'

describe Item do

  it "initialises a new item" do
    item = Item.new("apple", 0.99)
    expect(item).to be_a Item
  end

  it "shows the item's price" do
    item = Item.new("apple", 0.99)
    expect(item.show_price).to be_a(Numeric)
  end

end

class Item

  def initialize(name, price = 0.00)
    name = name
    @price = price
  end

  def show_price
    return @price
  end

end

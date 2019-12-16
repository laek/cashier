

class Scanner

attr_reader :scanned_items

  def initialize
    @scanned_items = {}
  end

  def scan(name, price)
    @scanned_items[name] = price
    return @scanned_items
  end

  def show_total
    total_price = 0
    @scanned_items.map do |x, y|
      total_price += y.to_f
    end
    return "£#{total_price}"
  end
end

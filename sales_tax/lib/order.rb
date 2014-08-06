require_relative 'item'

class Order

  REGEX_FOR_YES = /^\s*y\s*/i
  REGEX_FOR_EXIT = /^\s*q\s*/i
  PRODUCT_NAME_MSG = 'Name of the product'
  IMPORTED_MSG = 'Imported [y/Y]'
  EXEMPTION_MSG = 'Exempted from sales tax[y/Y]:'
  ENTER_PRICE_MSG = 'Price'
  EXIT_MSG = 'Enter q/Q to exit'

  def initialize
    @items = []
    @total_price = 0
  end

  def to_s
    "Total: \t #{ @total_price } "
  end

  def generate_bill
    @items.each do |item|
      @total_price += item.calculate_price
      yield item
    end
    yield self
  end

  def add_item
    item = Item.new
    item.name = yield PRODUCT_NAME_MSG
    item.imported = ((yield IMPORTED_MSG ) =~ REGEX_FOR_YES)
    item.sales_tax_exempted = (yield EXEMPTION_MSG) =~ REGEX_FOR_YES
    item.price = (yield ENTER_PRICE_MSG ).to_i
    @items.push(item)
    decision = yield EXIT_MSG
    if(decision !~ REGEX_FOR_EXIT)
      add_item { |message| puts message; gets.chomp }
    end
  end
end

require './receipt'
require '../modules/round_off'
class Cart
  attr_accessor :item_name, :price, :exempt, :imported, :tax

  def initialize(item_name, price, exempt, imported)
		@item_name = item_name
		@price = price.to_f
		@exempt = exempt
		@imported = imported
		@tax = 0.0
	end

  def calculator
    no_tax = 0.0
    basic_tax = 0.10
    imported_tax = 0.05
  
      if @exempt == true && @imported == false
        @tax = no_tax
  
      elsif @exempt == false && @imported == true
        @tax = @price * (basic_tax + imported_tax)
      
      elsif @exempt == false && @imported == false
        @tax = @price * basic_tax
      end
      @tax
  end
end  





book = Cart.new("1 book", 12.49, true, false)
cd = Cart.new("1 music CD", 16.49, false, false)
chocolate_bar = Cart.new("1 chocolate bar", 0.85, true, false)

new_receipt = Receipt.new
new_receipt.add_to_receipt(book)
new_receipt.add_to_receipt(cd)
new_receipt.add_to_receipt(chocolate_bar)

puts new_receipt.print_list







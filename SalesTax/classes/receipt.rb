require '../modules/round_off'
class Receipt

  include RoundOff
	def initialize
		@list = []
		@price_total = 0.0
		@tax_total = 0.0
	end	

	def add_to_receipt(item)
		@list << item
		item.calculator	
		@price_total += item.price
		@tax_total += item.tax
	
	end

	def print_list
		@list.each do |product|
			puts "#{product.item_name}: #{product.price}"
		end

		puts "Sales Tax: #{RoundOff.do_round_off(@tax_total)}"
    puts "Total: #{RoundOff.do_round_off(@price_total)}"
		
	end	
  
end	






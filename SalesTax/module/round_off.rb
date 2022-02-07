require '../classes/cart'
require '../classes/receipt'
module RoundOff
  
  def self.do_round_off(value)
    ((value * 20). round(2) / 20). round(2)
  end

end
class Checkout
  
  attr_accessor :basket

  def initialize
    @basket ||= []
    @total = 0
  end

  def scan(item)
    @basket << item
  end

  def total
    @basket.each do |item| 
      @total += item.price
    end
    @total
  end

end
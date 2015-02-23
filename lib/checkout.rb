class Checkout
  
  attr_accessor :basket

  def initialize
    @basket ||= []
    @total ||= 0
  end

  def scan(item)
    @basket << item
  end

  def total
    @basket.each { |item| @total =+ item.price }
    @total
  end

end
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
    # this feels wrong - the basket should already 
    # know its total instead of having to check it
    @basket.each { |item| @total += item.price }
    @total
  end

end
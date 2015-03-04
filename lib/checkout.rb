class Checkout
  
  attr_accessor :basket

  def initialize
    @basket = []
  end

  def scan(item)
    @basket << item
  end

  def cancel(item)
    # find the item in the basket
    # remove it
  end

  def total
    @basket.map(&:price).inject(:+).round(2)
  end

end
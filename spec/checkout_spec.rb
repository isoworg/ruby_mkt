require "checkout"

RSpec.describe 'the checkout' do 

  context 'when the checkout total is greater than £60' do
    it 'gives a 10% discount'
  end

  context 'when the basket includes 2 or more lavender hearts' do
    it 'reduces the price of a lavender heart to £8.50'
  end

end
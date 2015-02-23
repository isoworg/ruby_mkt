require 'checkout'
require 'item'

describe 'the checkout' do 

  let(:checkout)        { Checkout.new }
  let(:lavender_heart)  { Item.new("Lavender Heart",9.25) }
  let(:cufflinks)       { Item.new("Personalised Cufflinks",45.00) }
  let(:kids_tshirt)     { Item.new("Kid's T-shirt",19.95) }

  before do
    checkout.scan(cufflinks)
    checkout.scan(lavender_heart)
  end

  it 'scans items into a basket' do
    expect(checkout.basket).to include cufflinks
  end

  it 'keeps track of the total price' do
    expect(checkout.total).to equal (cufflinks.price + lavender_heart.price)
  end

  context 'when there are promotions:' do
    before { checkout.scan(lavender_heart) }

    it 'more than two lavender hearts reduces the item price to £8.50'
    it 'more than £60 total reduces the total by 10%'

  end


end
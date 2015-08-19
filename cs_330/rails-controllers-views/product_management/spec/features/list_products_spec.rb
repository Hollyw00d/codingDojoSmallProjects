require 'rails_helper'

RSpec.describe 'listing products' do
  it 'displays list of products' do
    product = Product.create(name: 'Shoe', description: 'Walking', price: 10.00)
    product = Product.create(name: 'Boots', description: 'Not walking', price: 535.00)
    visit '/'
    expect(page).to have_text('Shoe')
    expect(page).to have_text('$10.0')
    expect(page).to have_text('Boots')
    expect(page).to have_text('$535.0')
  end

end
require 'mparticle'

describe 'Product' do
  it 'should create an instance of Product' do
    model = MParticle::Product.new
    expect(model).to be_an_instance_of MParticle::Product
  end

  it 'should have the property id (base name: "id")' do
    model = MParticle::Product.new
    model.id = '12345'
    expect(model.id).to eq '12345'
  end

  it 'should have the property name (base name: "name")' do
    model = MParticle::Product.new
    model.name = 'Laserdisc'
    expect(model.name).to eq 'Laserdisc'
  end

  it 'should have the property price (base name: "price")' do
    model = MParticle::Product.new
    model.price = 100.59 
    expect(model.price).to eq 100.59 
  end

  it 'should have the property totalProductAmount (base name: "total_product_amount")' do
    model = MParticle::Product.new
    model.total_product_amount = 40.10 
    expect(model.total_product_amount).to eq 40.10 
  end
end
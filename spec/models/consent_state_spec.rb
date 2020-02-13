require 'mparticle'

describe 'ConsentState' do
  it 'should create an instance of ConsentState' do
    model = MParticle::ConsentState.new
    expect(model).to be_an_instance_of MParticle::ConsentState
  end

  it 'should have the property gdpr (base name: "gdpr")' do
    model = MParticle::ConsentState.new
    expect(model).to have_attributes(:gdpr => {})
  end

  it 'should have the property ccpa (base name: "ccpa")' do
    model = MParticle::ConsentState.new
    expect(model).to have_attributes(:ccpa => {})
  end

end
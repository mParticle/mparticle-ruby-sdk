require 'mparticle'

describe 'CommerceEvent' do
  it 'should create an instance of CommerceEvent' do
    model = MParticle::CommerceEvent.new
    expect(model).to be_an_instance_of MParticle::CommerceEvent
  end

  it 'should have custom_flags' do
    model = MParticle::CommerceEvent.new
    model.custom_flags = {
      "foo": 'bar',
      'answer': 42,
      'arrays': [
          'foo', 'bar', 'baz'
      ]
    }
    expect(model.custom_flags[:foo]).to eq('bar')
    expect(model.custom_flags[:answer]).to eq(42)
    expect(model.custom_flags[:arrays]).to eq(['foo', 'bar', 'baz'])
  end

end
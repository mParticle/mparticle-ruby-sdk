require 'mparticle'

describe 'AppEvent' do
  it 'should create an instance of AppEvent' do
    model = MParticle::AppEvent.new
    expect(model).to be_an_instance_of MParticle::AppEvent
  end

  it 'should have custom_flags' do
    model = MParticle::AppEvent.new
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
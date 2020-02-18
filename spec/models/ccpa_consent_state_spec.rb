require 'mparticle'

describe 'CCPAConsentState' do
  it 'should create an instance of CCPAConsentState' do
    model = MParticle::CCPAConsentState.new
    expect(model).to be_an_instance_of MParticle::CCPAConsentState
  end

  it 'should have the property consented (base name: "consented")' do
    model = MParticle::CCPAConsentState.new
    model.consented = true
    expect(model.consented).to eq true
  end

  it 'should have the property timestamp_unixtime_ms {base name: "timestamp_unixtime_ms" }' do
    now = Time.now.to_i
    model = MParticle::CCPAConsentState.new
    model.timestamp_unixtime_ms = now
    expect(model.timestamp_unixtime_ms).to eq now
  end

  it 'should have the property location {base name: "location" }' do
    model = MParticle::CCPAConsentState.new
    model.location =  'dtmgbank.com/signup'
    expect(model.location).to eq 'dtmgbank.com/signup'
  end

  it 'should have the property hardware_id {base name: "hardware_id" }' do
    model = MParticle::CCPAConsentState.new
    model.hardware_id = 'IDFA:a5d934n0-232f-4afc-2e9a-3832d95zc702'
    expect(model.hardware_id).to eq 'IDFA:a5d934n0-232f-4afc-2e9a-3832d95zc702'
  end

end
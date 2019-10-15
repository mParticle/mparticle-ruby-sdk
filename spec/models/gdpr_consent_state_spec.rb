require 'mparticle'

describe 'GDPRConsentState' do
    it 'should create an instance of GDPRConsentState' do
      model = MParticle::GDPRConsentState.new
      expect(model).to be_an_instance_of MParticle::GDPRConsentState
    end

    it 'should have the property document (base name: "document")' do
      model = MParticle::GDPRConsentState.new
      model.document = 'document_agreement.v2'
      expect(model.document).to eq 'document_agreement.v2'
    end

    it 'should have the property consented (base name: "consented")' do
      model = MParticle::GDPRConsentState.new
      model.consented = true
      expect(model.consented).to eq true
    end

    it 'should have the property timestamp_unixtime_ms {base name: "timestamp_unixtime_ms" }' do
      now = Time.now.to_i
      model = MParticle::GDPRConsentState.new
      model.timestamp_unixtime_ms = now
      expect(model.timestamp_unixtime_ms).to eq now
    end

    it 'should have the property location {base name: "location" }' do
      model = MParticle::GDPRConsentState.new
      model.location =  'dtmgbank.com/signup'
      expect(model.location).to eq 'dtmgbank.com/signup'
    end

    it 'should have the property hardware_id {base name: "hardware_id" }' do
      model = MParticle::GDPRConsentState.new
      model.hardware_id = 'IDFA:a5d934n0-232f-4afc-2e9a-3832d95zc702'
      expect(model.hardware_id).to eq 'IDFA:a5d934n0-232f-4afc-2e9a-3832d95zc702'
    end

end
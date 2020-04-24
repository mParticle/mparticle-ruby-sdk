#!/usr/bin/env ruby -I../lib

# load the gem
require 'mparticle'
require 'date'
config = MParticle::Configuration.new
config.api_key = 'REPLACE WITH API KEY'
config.api_secret = 'REPLACE WITH API SECRET'
# config.debugging = true

api_instance = MParticle::EventsApi.new(config)

batch = MParticle::Batch.new
batch.timestamp_unixtime_ms = DateTime.now.strftime('%Q').to_i
batch.environment = 'development'

user_identities = MParticle::UserIdentities.new
user_identities.customerid = '12345'

app_event = MParticle::AppEvent.new
app_event.event_name = 'Test event'
app_event.custom_event_type = 'navigation'
app_event.custom_attributes = { 'Test key' => 'Test value' }
app_event.custom_flags = {
  'answer': 42,
  'question': 'What is the answer to life, the universe, and everything?',
  'dolphins': [
      'So long',
      'Thanks for all the fish'
  ]
}

screen_view_event = MParticle::ScreenViewEvent.new
screen_view_event.custom_flags = {
  'answer': 42,
  'question': 'What is the answer to life, the universe, and everything?',
  'dolphins': [
      'So long',
      'Thanks for all the fish'
  ]
}

commerce_event = MParticle::CommerceEvent.new
commerce_event = {
  'answer': 42,
  'question': 'What is the answer to life, the universe, and everything?',
  'dolphins': [
      'So long',
      'Thanks for all the fish'
  ]
}

batch.events = [MParticle::SessionStartEvent.new, app_event, MParticle::SessionEndEvent.new]
batch.user_identities = user_identities

ccpa_consent_state = MParticle::CCPAConsentState.new
ccpa_consent_state.document = 'document.agreement.v3'
ccpa_consent_state.consented = true
ccpa_consent_state.timestamp_unixtime_ms = Time.now.to_i
ccpa_consent_state.location = 'mparticle.test/signup'
ccpa_consent_state.hardware_id = 'IDFA:a5d96n32-224a-3b11-1088-a202695bc710'

gdpr_consent_state = MParticle::GDPRConsentState.new
gdpr_consent_state.document = 'document_agreement.v2'
gdpr_consent_state.consented = true
gdpr_consent_state.timestamp_unixtime_ms = Time.now.to_i
gdpr_consent_state.location = 'dtmgbank.com/signup'
gdpr_consent_state.hardware_id = 'IDFA:a5d934n0-232f-4afc-2e9a-3832d95zc702'

consent_state = MParticle::ConsentState.new
# Make sure this purpose matches your consent purpose in
# Workspace Settings > Workspace > Regulations
# https://docs.mparticle.com/guides/consent-management/
consent_state.ccpa = { 'data_sale_opt_out' => ccpa_consent_state }
consent_state.gdpr = { 'document_agreement' => gdpr_consent_state }
batch.consent_state = consent_state

batch.mpid = 600868121729048600
batch.mp_deviceid = "59780f39-d7a0-4ebe-9950-280f937c29e2"

begin
  # send events
  thread = api_instance.upload_events(batch) { |data, status_code, headers|
    if status_code == 202
      puts "Upload complete"
    end
  }
  # wait for the thread, otherwise process may exit too early
  thread.join
rescue MParticle::ApiError => e
  puts "Exception when calling mParticle: #{e.response_body}"
end

require 'mparticle'
require 'json'

describe 'Batch' do
  it 'should create an instance of Batch' do
    model = MParticle::Batch.new
    expect(model).to be_an_instance_of MParticle::Batch
  end

  it 'should set integration attributes on batch' do
    batch_model = MParticle::Batch.new
    batch_model.integration_attributes = { 123 => { "foo" => "bar"}, 456 => { "foo" => "baz" }}
    expect(batch_model.integration_attributes[123]["foo"]).to eq 'bar'
    expect(batch_model.integration_attributes[456]["foo"]).to eq 'baz'
    puts batch_model.to_hash
    json = batch_model.to_hash.to_json

  end

  it 'should have the property att_timestamp_unixtime_ms {base name: "att_timestamp_unixtime_ms" }' do
    device_info = MParticle::DeviceInformation.new
    now = (Time.now.to_f * 1000).to_i
    device_info.att_timestamp_unixtime_ms = now
    expect(device_info.att_timestamp_unixtime_ms).to eq now
    puts device_info.to_hash
    json = device_info.to_hash.to_json

  end

  it 'should have the property att_authorization_status {base name: "att_authorization_status" }' do
    device_info = MParticle::DeviceInformation.new
    device_info.att_authorization_status = 'authorized'
    expect(device_info.att_authorization_status).to eq('authorized')
    puts device_info.to_hash
    json = device_info.to_hash.to_json

  end

end
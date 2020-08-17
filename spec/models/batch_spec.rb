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

end
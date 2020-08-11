require 'mparticle'

describe 'UserIdentities' do
  it 'should create an instance of UserIdentities' do
    model = MParticle::UserIdentities.new
    expect(model).to be_an_instance_of MParticle::UserIdentities
  end

  it 'should set all identities' do
    model = MParticle::UserIdentities.new
    model.other = 'foo_other'
    expect(model.other).to eq('foo_other')
    model.customerid = 'foo_customerid'
    expect(model.customerid).to eq('foo_customerid')
    model.facebook = 'foo_facebook'
    expect(model.facebook).to eq('foo_facebook')
    model.twitter = 'foo_twitter'
    expect(model.twitter).to eq('foo_twitter')
    model.google = 'foo_google'
    expect(model.google).to eq('foo_google')
    model.microsoft = 'foo_microsoft'
    expect(model.microsoft).to eq('foo_microsoft')
    model.yahoo = 'foo_yahoo'
    expect(model.yahoo).to eq('foo_yahoo')
    model.email = 'foo_email'
    expect(model.email).to eq('foo_email')
    model._alias = 'foo_alias'
    expect(model._alias).to eq('foo_alias')
    model.facebook_custom_audience_id = 'foo_fbid'
    expect(model.facebook_custom_audience_id).to eq('foo_fbid')
    model.other_id_2 = 'foo_other_id_2'
    expect(model.other_id_2).to eq('foo_other_id_2')
    model.other_id_3 = 'foo_other_id_3'
    expect(model.other_id_3).to eq('foo_other_id_3')
    model.other_id_4 = 'foo_other_id_4'
    expect(model.other_id_4).to eq('foo_other_id_4')
    model.other_id_5 = 'foo_other_id_5'
    expect(model.other_id_5).to eq('foo_other_id_5')
    model.other_id_6 = 'foo_other_id_6'
    expect(model.other_id_6).to eq('foo_other_id_6')
    model.other_id_7 = 'foo_other_id_7'
    expect(model.other_id_7).to eq('foo_other_id_7')
    model.other_id_8 = 'foo_other_id_8'
    expect(model.other_id_8).to eq('foo_other_id_8')
    model.other_id_9 = 'foo_other_id_9'
    expect(model.other_id_9).to eq('foo_other_id_9')
    model.other_id_10 = 'foo_other_id_10'
    expect(model.other_id_10).to eq('foo_other_id_10')
    model.mobile_number = 'foo_mobile_number'
    expect(model.mobile_number).to eq('foo_mobile_number')
    model.phone_number_2 = 'foo_phone_number_2'
    expect(model.phone_number_2).to eq('foo_phone_number_2')
    model.phone_number_3 = 'foo_phone_number_3'
    expect(model.phone_number_3).to eq('foo_phone_number_3')


  end

end
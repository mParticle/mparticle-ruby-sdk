require 'mparticle'

describe 'DataPlanContext' do
  it 'should create an instance of DataPlanContext' do
    model = MParticle::DataPlanContext.new
    expect(model).to be_an_instance_of MParticle::DataPlanContext
  end

  it 'should set context on batch' do
    batch_model = MParticle::Batch.new
    batch_model.context = MParticle::BatchContext.new
    batch_model.context.data_plan = MParticle::DataPlanContext.new
    batch_model.context.data_plan.plan_id = 'foo_dp_id'
    batch_model.context.data_plan.plan_version = 5
    expect(batch_model.context.data_plan.plan_id).to eq('foo_dp_id')
    expect(batch_model.context.data_plan.plan_version).to eq(5)
  end

end
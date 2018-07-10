require 'rails_helper'

RSpec.describe UserConfig, type: :model do
  it 'requires correct temperature unit' do
    user_config = build(:user_config)
    expect(user_config).to validate_inclusion_of(:temperature_unit).in_array(%w[F C])
  end

  it 'requires correct measurement system' do
    user_config = build(:user_config)
    expect(user_config).to validate_inclusion_of(:measurement_system).in_array(%w[imperial metric])
  end
end

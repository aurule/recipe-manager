require 'rails_helper'

RSpec.describe User, type: :model do
  it 'requires a unique email' do
    user = build(:user)
    expect(user).to validate_uniqueness_of(:email).ignoring_case_sensitivity
  end
end

require 'rails_helper'

RSpec.describe Step, type: :model do
  it 'requires a description' do
    step = build(:step)
    expect(step).to validate_presence_of(:description)
  end
end

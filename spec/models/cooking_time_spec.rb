require 'rails_helper'

RSpec.describe CookingTime, type: :model do
  it 'requires prep time' do
    cooking_time = build(:cooking_time)
    expect(cooking_time).to validate_presence_of(:prep_time)
  end

  it 'requires active time' do
    cooking_time = build(:cooking_time)
    expect(cooking_time).to validate_presence_of(:active_time)
  end

  it 'requires passive time' do
    cooking_time = build(:cooking_time)
    expect(cooking_time).to validate_presence_of(:passive_time)
  end

  it 'requires total time' do
    cooking_time = build(:cooking_time)
    expect(cooking_time).to validate_presence_of(:total_time)
  end

  it 'updates total time automatically' do
    cooking_time = build(:cooking_time, prep_time: 0, active_time: 0, passive_time: 0, total_time: 0)
    cooking_time.prep_time = 5

    expect{ cooking_time.save }.to change{ cooking_time.total_time }.to 5
  end
end

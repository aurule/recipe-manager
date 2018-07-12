require 'rails_helper'

RSpec.describe Quantity, type: :model do
  it 'requires an amount' do
    quantity = build(:quantity)
    expect(quantity).to validate_presence_of(:amount)
  end

  it 'requires a unit' do
    quantity = build(:quantity)
    expect(quantity).to validate_presence_of(:unit)
  end
end

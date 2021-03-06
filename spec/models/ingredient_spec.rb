require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it 'requires name to be present' do
    ingredient = build(:ingredient)

    expect(ingredient).to validate_presence_of(:name)
  end
end

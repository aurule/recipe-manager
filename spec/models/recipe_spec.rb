require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it 'requires a title' do
    recipe = build(:recipe)
    expect(recipe).to validate_presence_of(:title)
  end
end

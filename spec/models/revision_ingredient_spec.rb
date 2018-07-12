require 'rails_helper'

RSpec.describe RevisionIngredient, type: :model do
  it 'requires a unique order per revision' do
    revision_ingredient = build(:revision_ingredient)
    expect(revision_ingredient).to validate_uniqueness_of(:order).scoped_to(:revision_id)
  end
end

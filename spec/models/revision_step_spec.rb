require 'rails_helper'

RSpec.describe RevisionStep, type: :model do
  it 'requires order to be unique per revision' do
    revision_step = build(:revision_step)
    expect(revision_step).to validate_uniqueness_of(:order).scoped_to(:revision_id)
  end

  it 'requires step to be unique per revision' do
    revision_step = build(:revision_step)
    expect(revision_step).to validate_uniqueness_of(:step).scoped_to(:revision_id)
  end
end

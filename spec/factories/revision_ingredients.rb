FactoryBot.define do
  factory :revision_ingredient do
    revision
    ingredient
    quantity
    notes "notes about it"
    sequence(:order) { |n| n }
  end
end

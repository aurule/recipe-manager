# == Schema Information
#
# Table name: revision_ingredients
#
#  id            :integer          not null, primary key
#  notes         :text
#  order         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ingredient_id :integer
#  revision_id   :integer
#
# Indexes
#
#  index_revision_ingredients_on_ingredient_id       (ingredient_id)
#  index_revision_ingredients_on_revision_and_order  (,order) UNIQUE
#  index_revision_ingredients_on_revision_id         (revision_id)
#

FactoryBot.define do
  factory :revision_ingredient do
    revision
    ingredient
    quantity
    notes "notes about it"
    sequence(:order) { |n| n }
  end
end

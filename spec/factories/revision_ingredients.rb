# == Schema Information
#
# Table name: revision_ingredients
#
#  id            :bigint(8)        not null, primary key
#  notes         :text
#  order         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  ingredient_id :bigint(8)
#  revision_id   :bigint(8)
#
# Indexes
#
#  index_revision_ingredients_on_ingredient_id          (ingredient_id)
#  index_revision_ingredients_on_revision_id            (revision_id)
#  index_revision_ingredients_on_revision_id_and_order  (revision_id,order) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (ingredient_id => ingredients.id)
#  fk_rails_...  (revision_id => revisions.id)
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

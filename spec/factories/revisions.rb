# == Schema Information
#
# Table name: revisions
#
#  id                 :bigint(8)        not null, primary key
#  notes              :string
#  rating             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  parent_revision_id :bigint(8)
#  recipe_id          :bigint(8)
#
# Indexes
#
#  index_revisions_on_parent_revision_id  (parent_revision_id)
#  index_revisions_on_recipe_id           (recipe_id)
#
# Foreign Keys
#
#  fk_rails_...  (parent_revision_id => revisions.id)
#  fk_rails_...  (recipe_id => recipes.id)
#

FactoryBot.define do
  factory :revision do
    recipe
    notes "revision notes"
    rating 1
  end
end

# == Schema Information
#
# Table name: revisions
#
#  id                 :integer          not null, primary key
#  notes              :string
#  rating             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  parent_revision_id :integer
#  recipe_id          :integer
#
# Indexes
#
#  index_revisions_on_parent_revision_id  (parent_revision_id)
#  index_revisions_on_recipe_id           (recipe_id)
#

FactoryBot.define do
  factory :revision do
    recipe
    notes "revision notes"
    rating 1
  end
end

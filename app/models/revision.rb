# == Schema Information
#
# Table name: revisions
#
#  id                 :bigint(8)        not null, primary key
#  cooked_at          :datetime
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

class Revision < ApplicationRecord

  belongs_to :recipe
  belongs_to :parent_revision, class_name: :revision, optional: true

  has_many :child_revisions, class_name: :revision, foreign_key: :parent_revision_id
  has_many :revision_steps
  has_many :steps, through: :revision_steps, inverse_of: :revisions
  has_many :revision_ingredients
  has_many :ingredients, through: :revision_steps, inverse_of: :revisions

end

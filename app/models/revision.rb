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

class Revision < ApplicationRecord

  belongs_to :recipe
  belongs_to :parent_revision, class_name: :revision, optional: true

  has_many :child_revisions, class_name: :revision, foreign_key: :parent_revision_id
  has_many :revision_steps
  has_many :steps, through: :revision_steps, inverse_of: :revisions
  has_many :revision_ingredients
  has_many :ingredients, through: :revision_steps, inverse_of: :revisions

end

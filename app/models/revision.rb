# == Schema Information
#
# Table name: revisions
#
#  id         :integer          not null, primary key
#  notes      :string
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer
#
# Indexes
#
#  index_revisions_on_recipe_id  (recipe_id)
#

class Revision < ApplicationRecord

  belongs_to :recipe

  has_many :revision_steps
  has_many :steps, through: :revision_steps, inverse_of: :revisions
  has_many :revision_ingredients
  has_many :ingredients, through: :revision_steps, inverse_of: :revisions

end

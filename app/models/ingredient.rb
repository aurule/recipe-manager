# == Schema Information
#
# Table name: ingredients
#
#  id          :bigint(8)        not null, primary key
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  recipe_id   :bigint(8)
#
# Indexes
#
#  index_ingredients_on_recipe_id  (recipe_id)
#
# Foreign Keys
#
#  fk_rails_...  (recipe_id => recipes.id)
#

class Ingredient < ApplicationRecord

  has_many :revision_steps
  has_many :revisions, through: :revision_steps, inverse_of: :ingredients
  belongs_to :recipe, optional: true, inverse_of: :yielded_ingredients

  validates :name, presence: true

end

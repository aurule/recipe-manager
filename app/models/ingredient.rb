# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  recipe_id   :integer
#
# Indexes
#
#  index_ingredients_on_recipe_id  (recipe_id)
#

class Ingredient < ApplicationRecord

  belongs_to :recipe, optional: true, inverse_of: :yielded_ingredients

  validates :name, presence: true

end

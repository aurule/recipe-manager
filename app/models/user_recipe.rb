# == Schema Information
#
# Table name: user_recipes
#
#  id                 :integer          not null, primary key
#  allow_copy         :boolean          default(FALSE), not null
#  permalink          :string
#  public_access      :boolean          default(FALSE), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  original_recipe_id :integer
#  recipe_id          :integer
#  user_id            :integer
#
# Indexes
#
#  index_user_recipes_on_original_recipe_id  (original_recipe_id)
#  index_user_recipes_on_recipe_id           (recipe_id)
#  index_user_recipes_on_user_id             (user_id)
#

class UserRecipe < ApplicationRecord

  belongs_to :user
  belongs_to :recipe
  belongs_to :original_recipe, class_name: :recipe, optional: true

  # def create_permalink
  #   return permalink if permalink.present?

  #   # format: user name + recipe name, truncate to a reasonable length, append 6-digit random number
  #   # that link is shareable and always works, even with public flag false
  # end

  # public means the recipe shows up in searches and can be viewed by people besides yourself using the normal url structure

  # allow_copy means that other users can duplicate the recipe to their own collection

end

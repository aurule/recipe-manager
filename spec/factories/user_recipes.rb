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

FactoryBot.define do
  factory :user_recipe do
    user
    recipe
    original_recipe nil
    public_access false
    allow_copy false
    permalink nil
  end
end

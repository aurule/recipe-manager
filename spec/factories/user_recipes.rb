# == Schema Information
#
# Table name: user_recipes
#
#  id                 :bigint(8)        not null, primary key
#  allow_copy         :boolean          default(FALSE), not null
#  permalink          :string
#  public_access      :boolean          default(FALSE), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  original_recipe_id :bigint(8)
#  recipe_id          :bigint(8)
#  user_id            :bigint(8)
#
# Indexes
#
#  index_user_recipes_on_original_recipe_id  (original_recipe_id)
#  index_user_recipes_on_recipe_id           (recipe_id)
#  index_user_recipes_on_user_id             (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (original_recipe_id => recipes.id)
#  fk_rails_...  (recipe_id => recipes.id)
#  fk_rails_...  (user_id => users.id)
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

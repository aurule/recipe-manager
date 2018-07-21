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

FactoryBot.define do
  factory :ingredient do
    recipe nil
    name "MyString"
    description "MyText"
  end
end

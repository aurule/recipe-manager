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

FactoryBot.define do
  factory :ingredient do
    recipe nil
    name "MyString"
    description "MyText"
  end
end

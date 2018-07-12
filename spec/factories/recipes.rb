# == Schema Information
#
# Table name: recipes
#
#  id              :integer          not null, primary key
#  attribution     :string
#  cuisine         :string
#  description     :text             default(""), not null
#  title           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  cooking_time_id :integer
#  quantity_id     :integer
#
# Indexes
#
#  index_recipes_on_cooking_time_id  (cooking_time_id)
#  index_recipes_on_quantity_id      (quantity_id)
#

FactoryBot.define do
  factory :recipe do
    quantity nil
    cooking_time nil
    title "my recipe"
    description "some kinda tasty recipe"
    attribution "mamma's cookbook"
    cuisine "Italian"
  end
end

# == Schema Information
#
# Table name: recipes
#
#  id                  :integer          not null, primary key
#  attribution         :string
#  cuisine             :string
#  description         :text             default(""), not null
#  title               :string           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  current_revision_id :integer
#

FactoryBot.define do
  factory :recipe do
    title "my recipe"
    description "some kinda tasty recipe"
    attribution "mamma's cookbook"
    cuisine "Italian"
  end
end

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

class Recipe < ApplicationRecord

  belongs_to :quantity
  belongs_to :cooking_time

  validates :title, presence: true

end

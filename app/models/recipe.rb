# == Schema Information
#
# Table name: recipes
#
#  id          :integer          not null, primary key
#  attribution :string
#  cuisine     :string
#  description :text             default(""), not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Recipe < ApplicationRecord

  has_one :quantity, as: :quantable, dependent: :destroy
  has_one :cooking_time, as: :timeable, dependent: :destroy

  validates :title, presence: true

end

# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord

  has_one :user_config
  has_many :user_recipes
  has_many :recipes, through: :user_recipes

  validates :email, uniqueness: { case_sensitive: false }

end

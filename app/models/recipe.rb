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

class Recipe < ApplicationRecord

  has_one :quantity, as: :quantable, dependent: :destroy
  has_one :cooking_time, as: :timeable, dependent: :destroy

  validates :title, presence: true

  has_one :user_recipe
  has_one :user, through: :user_recipes
  has_many :revisions, dependent: :destroy
  belongs_to :current_revision, class_name: 'Revision', foreign_key: :current_revision_id, optional: true

end

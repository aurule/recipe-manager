# == Schema Information
#
# Table name: quantities
#
#  id         :integer          not null, primary key
#  amount     :float            not null
#  unit       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quantity < ApplicationRecord

  validates :amount, presence: true
  validates :unit, presence: true

end

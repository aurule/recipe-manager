# == Schema Information
#
# Table name: quantities
#
#  id             :integer          not null, primary key
#  amount         :float            not null
#  quantable_type :string
#  unit           :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  quantable_id   :integer
#
# Indexes
#
#  index_quantities_on_quantable_type_and_quantable_id  (quantable_type,quantable_id)
#

class Quantity < ApplicationRecord

  belongs_to :quantable, polymorphic: true

  validates :amount, presence: true
  validates :unit, presence: true

end

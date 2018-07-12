# == Schema Information
#
# Table name: quantities
#
#  id         :integer          not null, primary key
#  amount     :float
#  unit       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :quantity do
    amount 1.5
    unit "litres"
  end
end

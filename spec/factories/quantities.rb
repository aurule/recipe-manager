# == Schema Information
#
# Table name: quantities
#
#  id             :bigint(8)        not null, primary key
#  amount         :float            not null
#  quantable_type :string
#  unit           :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  quantable_id   :bigint(8)
#
# Indexes
#
#  index_quantities_on_quantable_type_and_quantable_id  (quantable_type,quantable_id)
#

FactoryBot.define do
  factory :quantity do
    amount 1.5
    unit "litres"
    association :quantable, factory: :recipe
  end
end

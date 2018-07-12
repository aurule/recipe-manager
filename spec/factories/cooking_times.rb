# == Schema Information
#
# Table name: cooking_times
#
#  id            :integer          not null, primary key
#  active_time   :integer          default(0), not null
#  passive_time  :integer          default(0), not null
#  prep_time     :integer          default(0), not null
#  timeable_type :string
#  total_time    :integer          default(0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  timeable_id   :integer
#
# Indexes
#
#  index_cooking_times_on_timeable_type_and_timeable_id  (timeable_type,timeable_id)
#

FactoryBot.define do
  factory :cooking_time do
    prep_time 120
    active_time 120
    passive_time 120
    association :timeable, factory: :recipe
  end
end

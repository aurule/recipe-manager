# == Schema Information
#
# Table name: cooking_times
#
#  id           :integer          not null, primary key
#  active_time  :integer          default(0), not null
#  passive_time :integer          default(0), not null
#  prep_time    :integer          default(0), not null
#  total_time   :integer          default(0), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :cooking_time do
    prep_time 120
    active_time 120
    passive_time 120
  end
end

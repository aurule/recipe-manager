# == Schema Information
#
# Table name: steps
#
#  id          :bigint(8)        not null, primary key
#  comment     :text
#  description :text             not null
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :step do
    title "step title"
    description "step description"
    comment "optional notes"
  end
end

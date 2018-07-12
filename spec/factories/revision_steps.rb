# == Schema Information
#
# Table name: revision_steps
#
#  id          :integer          not null, primary key
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  revision_id :integer
#  step_id     :integer
#
# Indexes
#
#  index_revision_steps_on_revision_and_order  (,order) UNIQUE
#  index_revision_steps_on_revision_and_step   (,) UNIQUE
#  index_revision_steps_on_revision_id         (revision_id)
#  index_revision_steps_on_step_id             (step_id)
#

FactoryBot.define do
  factory :revision_step do
    revision
    step
    sequence(:order) { |n| n }
  end
end

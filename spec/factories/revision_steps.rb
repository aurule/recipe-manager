# == Schema Information
#
# Table name: revision_steps
#
#  id          :bigint(8)        not null, primary key
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  revision_id :bigint(8)
#  step_id     :bigint(8)
#
# Indexes
#
#  index_revision_steps_on_revision_id              (revision_id)
#  index_revision_steps_on_revision_id_and_order    (revision_id,order) UNIQUE
#  index_revision_steps_on_revision_id_and_step_id  (revision_id,step_id) UNIQUE
#  index_revision_steps_on_step_id                  (step_id)
#
# Foreign Keys
#
#  fk_rails_...  (revision_id => revisions.id)
#  fk_rails_...  (step_id => steps.id)
#

FactoryBot.define do
  factory :revision_step do
    revision
    step
    sequence(:order) { |n| n }
  end
end

# == Schema Information
#
# Table name: user_configs
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_user_configs_on_user_id  (user_id)
#

FactoryBot.define do
  factory :user_config do
    user
  end
end

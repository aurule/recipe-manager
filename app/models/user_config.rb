# == Schema Information
#
# Table name: user_configs
#
#  id                 :integer          not null, primary key
#  measurement_system :string           default("imperial"), not null
#  temperature_unit   :string           default("F"), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer          not null
#
# Indexes
#
#  index_user_configs_on_user_id  (user_id)
#

class UserConfig < ApplicationRecord
  belongs_to :user

  validates :temperature_unit, inclusion: { in: %w[F C] }
  validates :measurement_system, inclusion: { in: %w[imperial metric] }
end

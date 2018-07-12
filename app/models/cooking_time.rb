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

class CookingTime < ApplicationRecord

  belongs_to :timeable, polymorphic: true

  before_save :calculate_total_time

  validates :prep_time, presence: true
  validates :active_time, presence: true
  validates :passive_time, presence: true
  validates :total_time, presence: true

  private

  def calculate_total_time
    self.total_time = prep_time + active_time + passive_time
  end

end

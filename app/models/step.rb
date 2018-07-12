# == Schema Information
#
# Table name: steps
#
#  id          :integer          not null, primary key
#  comment     :text
#  description :text             not null
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Step < ApplicationRecord

  validates :description, presence: true

end

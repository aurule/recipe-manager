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

class Step < ApplicationRecord

  validates :description, presence: true

  has_many :revision_steps
  has_many :revisions, through: :revision_steps, inverse_of: :steps

end

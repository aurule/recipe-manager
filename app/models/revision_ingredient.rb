class RevisionIngredient < ApplicationRecord

  belongs_to :revision
  belongs_to :ingredient
  has_one :quantity, as: :quantable

  validates :order, uniqueness: { scope: :revision_id }

end

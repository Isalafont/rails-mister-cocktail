class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  belongs_to :user

  validates :description, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail }
end

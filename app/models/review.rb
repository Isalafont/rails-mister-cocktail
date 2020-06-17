class Review < ApplicationRecord
  belongs_to :user
  belongs_to :cocktail

  validates :comment, presence: true
end

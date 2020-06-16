class Review < ApplicationRecord
  belongs_to :cocktail
  belongs_to :user

  validates :comment, presence: true
end

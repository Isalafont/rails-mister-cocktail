class Cocktail < ApplicationRecord
  RATING = [0, 1, 2, 3, 4, 5]

  belongs_to :user

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  # validates :image, presence: true
  # validates :note, numericality: { only_integer: true}, inclusion: { in: RATING, message: '%{value} is not a valid rating.'}
end

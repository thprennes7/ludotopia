class Game < ApplicationRecord
  has_many :donations
  has_many :scores
  has_many :users, through: :scores
  has_one_attached :image
end

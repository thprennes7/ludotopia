class Game < ApplicationRecord
  has_many_attached :game_imgs
  has_many :donations
  has_many :scores
  has_many :users, through: :score 
end

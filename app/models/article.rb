class Article < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many_attached :article_imgs
end

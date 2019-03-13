class Article < ApplicationRecord
  has_many :comments
  has_many :likes
  has_many_attached :article_imgs
  after_create :send_news

  private

  def send_news
    UserMailer.news_actuality(self).deliver_now
  end
end

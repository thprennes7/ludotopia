class Article < ApplicationRecord
  after_create :send_news
  has_many :comments
  has_many :likes
  has_many_attached :article_imgs


  private

  def send_news
    UserMailer.news_actuality(self).deliver_now
  end
end

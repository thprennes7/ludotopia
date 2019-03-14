class Article < ApplicationRecord
  has_many :comments
  has_many :likes
  has_one_attached :image
  # after_create :send_news

  private

  def send_news
    users = User.all
    users.each do |user|
      UserMailer.news_actuality(self, user).deliver_now
    end
  end
end

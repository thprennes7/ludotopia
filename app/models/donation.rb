class Donation < ApplicationRecord
  after_create :send_donation
  belongs_to :game
  belongs_to :user


  private

  def send_donation
    UserMailer.confirm_donation(self).deliver_now
  end
end

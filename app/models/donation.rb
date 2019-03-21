class Donation < ApplicationRecord
  belongs_to :game
  belongs_to :user
  after_create :send_donation

  private

  def send_donation
    UserMailer.confirm_donation(self).deliver_now
  end
end
 
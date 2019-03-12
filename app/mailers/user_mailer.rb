class UserMailer < ApplicationMailer
    default from: 'no-reply@ludotopia.herokuapp.com'


    def welcome_email(user)
      @user = user
      @url = 'https://ludotopia.herokuapp.com'
      mail(to: @user.email, subject: 'Bienvenue chez Ludotopia !')
    end

    def confirm_donation(donation)
      @url = 'https://ludotopia.herokuapp.com'
      @user = User.find(donation.user.id)
      @donation = Donation.where(user_id: donation.user_id)
      mail(to: @user.email, subject: 'Merci pour la donation')
    end

end

class UserMailer < ApplicationMailer
    default from: 'no-reply@ludotopia.herokuapp.com'

    def welcome_email(user)
      @user = user
      @url = 'https://ludotopia.herokuapp.com'
      mail(to: @user.email, subject: 'Bienvenue chez Ludotopia !')
    end
end

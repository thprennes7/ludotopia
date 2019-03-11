class UserMailer < ApplicationMailer
    default from: 'no-reply@ludotopia.herokuapp.com'


    def welcome_email(user)
      @user = user
      @url = 'https://ludotopia.herokuapp.com'
      @facebook = 'https://www.facebook.com/Ludotopia-258709275039675/'
      mail(to: @user.email, subject: 'Bienvenue chez Ludotopia !')
    end
end

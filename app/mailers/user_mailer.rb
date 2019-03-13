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
    @donation = donation
    mail(to: @user.email, subject: 'Merci pour la donation')
  end

  def news_actuality(article)
    @article = article
    @users = User.all
    @users.each do |user|
      @user = user
      mail(to: @user.email, subject: 'Des nouveauté chez Ludotopia')
      sleep 0.8
    end
  end
end

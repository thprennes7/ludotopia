class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@ludotopia.herokuapp.com'
  layout 'mailer'
end

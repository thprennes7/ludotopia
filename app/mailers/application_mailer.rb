class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@ludotopia.herokuapp.com'
  default only_path: true
  layout 'mailer'
end

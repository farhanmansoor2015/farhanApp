class ApplicationMailer < ActionMailer::Base
  default from: "farhan.mansoor.qta@gmail.com"
  layout 'mailer'


 def account_activation(user)
       @user = user
       mail to: user.email, subject: "Account activation"
 end
end

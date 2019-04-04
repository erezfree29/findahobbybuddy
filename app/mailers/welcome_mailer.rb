class WelcomeMailer < ApplicationMailer

 def welcome_send(user)
 @user = user
 mail to: user.email, subject:"Welcome to find a hobby buddy",from:"info@momsandads.com"

 end

end

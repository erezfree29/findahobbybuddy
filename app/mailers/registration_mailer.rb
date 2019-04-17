class RegistrationMailer < ApplicationMailer

def registration_confirmation(user)

    mail(:to => "#{"new user"} <#{user.email}>", :subject => "Welcome to find a hobby buddy please confirm your email")
 end
end

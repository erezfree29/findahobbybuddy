class RegistrationMailer < ApplicationMailer

def registration_confirmation(user)
    mail(:to => "#{"new user"} <#{user.email}>", :subject => "Registration Confirmation")
 end
end

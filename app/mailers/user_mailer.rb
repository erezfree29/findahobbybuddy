class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = current_user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end








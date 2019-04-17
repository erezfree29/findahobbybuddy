class UsersController < ApplicationController

  def new

   @user = User.new()

 end


 def edit
   @user = current_user
   @token = params[:token]
   if @token == @user.confirm_token

    @user.email_confirmed = true
    @user.save(:validate => false)
    redirect_to root_path
  end
end


def update

end

end

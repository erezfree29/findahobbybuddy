class BuddiesController < ApplicationController
  def index
  end
  def new
    if user_signed_in?
      current_user.update(has_profile:true)
      @user = current_user
      @buddie = Buddie.new()
      @buddie.user_id = @user.id
    end
  end


    def create
      if user_signed_in?
        current_user.update(has_profile: true)
        @user = current_user
        @buddie = Buddie.new(buddie_params)
        @buddie.user_id = @user.id
      end

      if @buddie.save

        redirect_to root_path
      end
    end

    private

    def buddie_params


      params.require(:buddie).permit(:name, :age)

    end



  end
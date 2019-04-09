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
        @buddie.address = @buddie.countryname + " " + @buddie.town + " " +  @buddie.neighborhood
      end

      if @buddie.save

        redirect_to root_path
        flash[:success] = "You have created a profile successfully"

     else
       if @buddie.name == ""

        flash[:name] = "please enter your name"
       end
       if @buddie.hobby == ""
        flash[:hobby] = "please enter your hobby"
       end
       if @buddie.town == ""
        flash[:town] = "please enter your town"
       end


         flash[:faill] = "profile was not created"
         render :new



    end
    end
    def show
      @buddie = Buddie.where(user_id:current_user.id)
    end

    private

    def buddie_params


      params.require(:buddie).permit(:name,:age,:hobby,:hobby_description,:countryname,:neighborhood,:town,:photo,:level)

    end

  end



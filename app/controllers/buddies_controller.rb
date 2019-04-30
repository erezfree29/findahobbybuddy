class BuddiesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
  end
  def new
    if user_signed_in?
      @user = current_user
      @buddie = Buddie.new()

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

        flash[:success] = "You have created a profile successfully"
        redirect_to root_path(flash[:success])

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
       if @buddie.gender == ""
        flash[:town] = "please enter your gender"
       end



         flash[:faill] = "profile was not created"
         render :new



    end
    end
    def show

      @buddie = Buddie.where(user_id:current_user.id)


    end

    def show_other_buddie

       @buddie = Buddie.find(params[:id])


    end

    def index
      @buddies = Buddie.paginate(page: params[:page],per_page: 12)

    end


    private

    def buddie_params


      params.require(:buddie).permit(:name,:age,:hobby,:hobby_description,:countryname,:neighborhood,:town,:photo,:level,:gender)

    end

  end



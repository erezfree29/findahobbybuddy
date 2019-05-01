
class MessagesController < ApplicationController
def new
   @message = Message.new()
   @first_value = params.values()[2]
   @receving_buddie = Buddie.find(@first_value)
   session[:passed_variable] = @first_value
  end

  def create
   @message = Message.new(message_params)
   @first_value = session[:passed_variable]
   @receving_buddie_id = @first_value
   @message[:receving_buddie_id] = @receving_buddie_id
   @receving_buddie = Buddie.find(@receving_buddie_id)
   @message.date = Date.today
   @message.time = Time.now.strftime("%H:%M:%S")
   @buddies = Buddie.all
   @buddies.each do |b|
    if b.user_id == current_user.id
      @message[:sending_buddie_id] = b.id

    end
   end

    if @message.save
    flash[:success] = "Your message was sent successfully"
    redirect_to buddies_path(flash[:success])

   else

     render :new

   end

  end


  def index
   @buddies = Buddie.all
   @buddies.each do |b|
   if b.user_id == current_user.id
   @current_user_buddie_id = b.id
  end
 end


  @all_messages = Message.all
  @buddie_received_messages = []
  @buddie_sent_messages = []

  @all_messages.each do |m|
  if m[:receving_buddie_id] == @current_user_buddie_id
   @buddie_received_messages << m
  end
  if m[:sending_buddie_id] == @current_user_buddie_id
     @buddie_sent_messages << m
   end

  end

@buddie_sent_messages = @buddie_sent_messages.paginate(page: params[:page],per_page: 5)
@buddie_received_messages = @buddie_received_messages.paginate(page: params[:page],per_page: 5)


 end

 def show
  @message = Message.find(params[:id])
end


 private

def message_params


  params.require(:message).permit(:content)

 end

end









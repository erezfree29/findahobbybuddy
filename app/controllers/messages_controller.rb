class MessagesController < ApplicationController
  def new
  end
  def create
  end

  def index
 @buddies = Buddie.all
 @buddies.each do |b|
  if b.user_id == current_user.id
    @current_user_buddie_id = b.user_id
  end
 end

 @all_messages = Message.all
 @buddie_received_messages = []
 @buddie_sent_messages = []

  @all_messages.each do |m|
  if m.receving_buddie_id == @current_user_buddie_id
   @buddie_received_messages << m
  end
  if m.sending_buddie_id == @current_user_buddie_id
     @buddie_sent_messages << m
   end

 end
end

end

class EventsController < ApplicationController
  def index
    @events_user = User.find(session[:user_id])
    @events_yours =  Event.all.where(state: "CA")
  end

  def show
  end
  def create
    @e = Event.new(new_event)
    if @e.save
      redirect_to '/events'
    else
      flash[:errors] = @e.errors.full_messages
      redirect_to :back
    end
  end
  private
  def new_event
    params.require(:event).permit(:name, :date, :city, :state, :users_id)
  end
end

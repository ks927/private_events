class EventsController < ApplicationController
    before_action :logged_in, only: [:create]
    
  def new
  end

  def create
      @event = current_user.events.build(event_params)
      if @event.save
          flash[:success] = "Event created!"
          redirect_to @event
      else
          render :new
      end
  end

  def index
      @events = Event.all
      @upcoming_events = Event.upcoming
      @past_events = Event.past
  end
    
  def show
      @event = Event.find(params[:id])
      @attendees = @event.attendees
  end
    
    private
    
  def event_params
    params.require(:event).permit(:name, :date) 
  end
    
  def logged_in
    unless signed_in?
        flash[:danger] = "You must sign up to create an event!"
        redirect_to root_url
    end
  end
    
end

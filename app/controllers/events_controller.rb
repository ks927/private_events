class EventsController < ApplicationController
  def new
  end

  def create
      @event = current_user.events.build(event_params)
      if @event.save
          redirect_to events_path
      else
          render :new
      end
  end

  def index
      @events = Event.all
  end
    
    private
    
    def event_params
       params.require(:event).permit(:name) 
    end
end

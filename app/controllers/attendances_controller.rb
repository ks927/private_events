class AttendancesController < ApplicationController
    
  def create
      @event = Event.find(params[:attendance][:event_id])
      attendance = current_user.attendances.build(event_id: @event_id)
      current_user.attend!(@event)
      redirect_to event_path(@event)
  end
    
end

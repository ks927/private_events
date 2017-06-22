class AttendancesController < ApplicationController
    
  def create
      @event = Event.find(params[:attendance][:attended_event_id])
      attendance = current_user.attendances.build(attended_event_id: @event_id)
      if attendance.save
          flash[:success] = "Attending this event!"
          current_user.attend!(@event)
          redirect_to @event
      end
  end
    
end

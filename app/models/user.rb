class User < ApplicationRecord
    has_many :events, :foreign_key => "creator_id"
    has_many :attendances, :foreign_key => :attendee_id
    has_many :attended_events, :through => :attendances, :source => :attended_event
    
    validates :name, presence: true
    
    def upcoming_events
       self.attended_events.upcoming
    end
    
    def previous_events
       self.attended_events.past 
    end
    
    def attend!(event)
        self.attendances.create!(attended_event_id: event.id)
    end
    
    def attending?(event)
       event.attendees.include?(self) 
    end
    
end

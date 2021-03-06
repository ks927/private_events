class Event < ApplicationRecord
    belongs_to :creator, :class_name => "User"
    has_many :attendances, :foreign_key => :attended_event_id
    has_many :attendees, :through => :attendances, source: :attendee
    
    validates :name, presence: true
    validates :date, presence: true
    
     # Scope past and upcoming
     scope :upcoming, -> { where("date > ?", Date.today) } 
     scope :past, -> { where("date < ?", Date.today) } 

    
end

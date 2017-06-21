class AddAttendedEventIdToAttendances < ActiveRecord::Migration[5.0]
  def change
    add_column :attendances, :attended_event_id, :integer
  end
end

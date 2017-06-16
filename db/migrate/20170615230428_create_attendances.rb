class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.integer :attendee_id
      t.integer :attended_event

      t.timestamps
    end
  end
end

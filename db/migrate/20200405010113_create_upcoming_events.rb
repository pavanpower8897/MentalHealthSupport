class CreateUpcomingEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :upcoming_events do |t|
      t.string :title
      t.text :description
      t.string :start_time
      t.string :end_time
      t.string :event_date

      t.timestamps
    end
  end
end

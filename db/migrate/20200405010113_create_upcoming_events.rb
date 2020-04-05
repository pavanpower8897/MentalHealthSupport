class CreateUpcomingEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :upcoming_events do |t|
      t.string :title
      t.text :description
      t.float :start_time
      t.float :end_time

      t.timestamps
    end
  end
end

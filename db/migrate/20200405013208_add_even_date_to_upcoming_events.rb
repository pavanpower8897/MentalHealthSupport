class AddEvenDateToUpcomingEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :upcoming_events, :event_date, :date
  end
end

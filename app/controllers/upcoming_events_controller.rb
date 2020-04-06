class UpcomingEventsController < ApplicationController
	def index
		@upcoming = UpcomingEvent.all
	end
	def new
	end
	def create
		 @event = params.require(:upcomint_event);
		 @start_tim = @event["start_time(4i)"] + ":" + @event["start_time(5i)"] ;
		 @end_tim  =  @event["end_time(4i)"] + ":" + @event["end_time(5i)"];
		 @event_dat = @event["event_date(1i)"] + "-" + @event["event_date(2i)"] + "-" + @event["event_date(3i)"];
		 @e = UpcomingEvent.new(title: @event["title"],description: @event["description"],start_time: @start_tim,
		 	end_time: @end_tim,event_date: @event_dat);
		@e.save!
		redirect_to upcoming_events_path
	end

	def edit
	end
    
    def update
    end
end

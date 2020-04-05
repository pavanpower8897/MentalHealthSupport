class UpcomingEventsController < ApplicationController
	def index
	end
	def new
	end
	def create
		redirect_to upcoming_events_path
	end
end

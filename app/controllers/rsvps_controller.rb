class RsvpsController < ApplicationController
before_action :set_rsvp, only: [:show, :edit, :update]

	def index
		redirect_to root_path
	end

	def new
		@rsvp = Rsvp.new
	end

	def create
		@rsvp = Rsvp.new(rsvp_params) 
		if (@rsvp.save && Rails.env.production? && Riverify_recaptcha(model: @rsvp)) || (@rsvp.save)
			redirect_to @rsvp
			EmailMailer.notify(@rsvp.party_count, @rsvp.email, @rsvp.name, @rsvp.street, @rsvp.street2, @rsvp.city, @rsvp.zip, @rsvp.state, @rsvp.children_count, @rsvp.song_request, @rsvp.message, @rsvp.will_attend, @rsvp.dietary_restriction).deliver
		else
			render action: :new
		end
	end

	# def edit
	# end

	# def update
	# end
	
	def show
		@rsvp = Rsvp.find(params[:id])
	end

	private 

	def rsvp_params
		params.require(:rsvp).permit(:party_count, :email, :city, :name, :children_count, :song_request, :message, :will_attend, :dietary_restriction, :street, :street2, :zip, :state)

	end

	def set_rsvp
		Rsvp.find(params[:id])
	end
end

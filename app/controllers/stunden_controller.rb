class StundenController < ApplicationController
	def new
	end

	def create
		@stunde = Stunde.new(stunde_params)
		# Test something
		@stunde.user = User.find(1)
		@stunde.save
		redirect_to @stunde
	end

	def show
		@stunde = Stunde.find(params[:id])
	end

	private
		def stunde_params
			params.require(:stunde).permit(:date, :notes, :lesson_id, :tutor, :duration, :endtime, :location)
		end
end

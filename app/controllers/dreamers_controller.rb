class DreamersController < ApplicationController
	def new
		@dreamer = Dreamer.new
	end

	def show
		@dreamer = Dreamer.find(params[:id])
	end

	def create
		@dreamer = Dreamer.new(dreamer_params)
	
		if @dreamer.save
			redirect_to @dreamer
		else
			render 'new'
		end
	end

	private
	def dreamer_params
		params.require(:dreamer).permit(:name, :profile)
	end
end

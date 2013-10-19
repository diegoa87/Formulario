class AlumnisController < ApplicationController

	def new
		@alumni = Alumni.new
	end

	def create
		@alumni = Alumni.new(params[:alumni])
		if @alumni.save
			redirect_to root_path

	end
end

end


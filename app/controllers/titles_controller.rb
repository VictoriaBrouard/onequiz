class TitlesController < ApplicationController
	def index
		@title = Title.order("RANDOM()").first
	end

	def new
		@title = Title.new
	end

	def create
		Title.create(title_params)
		redirect_to root_path
	end

	private

	def title_params
		params.require(:title).permit(:title, :author, :user_name)
	end
end

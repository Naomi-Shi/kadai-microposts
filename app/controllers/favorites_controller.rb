class FavoritesController < ApplicationController
	def create
		favorite = Favorite.new
		favorite.user = current_user
		favorite.micropost_id = params[:micropost_id]
		favorite.save
		redirect_back(fallback_location: root_url)
	end
	def destroy
		favorite = Favorite.find(params[:id])
		favorite.destroy
		redirect_back(fallback_location: root_url)
	end
end
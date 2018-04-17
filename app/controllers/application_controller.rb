class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @favourites = FavouriteBookUser.where(user_id: current_user)
  end
end

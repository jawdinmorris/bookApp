class FavouriteBookUsersController < ApplicationController
  def show
    @user = current_user
    @favourites = FavouriteBookUser.where(user_id: current_user)
  end

  def new
    @new_favourite = FavouriteBookUser.new
    @new_favourite.user_id = current_user.id
    @new_favourite.book_id = Book.find(params[:book_id])
    @new_favourite.save
    redirect_to :back
  end
end

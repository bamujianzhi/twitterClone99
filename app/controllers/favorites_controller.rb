class FavoritesController < ApplicationController
  def create
    good = Micropost.find(params[:micropost_id])
    current_user.like(good)
    flash[:success] = 'お気に入りに加えました。'
    redirect_to root_url
  end

  def destroy
    good = Micropost.find(params[:micropost_id])
    current_user.unlike(good)
    flash[:success] = 'お気に入りから外しました。'
    redirect_to root_url
  end
end

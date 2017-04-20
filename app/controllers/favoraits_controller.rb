class FavoraitsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    user = Micropost.find(params[:fav_id])
    current_user.do_fav(user)
    flash[:success]='お気に入りに登録しました'
    redirect_to :back
  end

  def destroy
    user = Micropost.find(params[:fav_id])
    current_user.undo_fav(user)
    flash[:success] = 'お気に入りの登録を解除しました。'
    redirect_to :back
  end
end

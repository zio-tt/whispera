class LikesController < ApplicationController
  def create
    @episode = Episode.find(params[:episode_id])
    @like = @episode.likes.build(guest_token: session[:guest])
    if @like.save
      redirect_to episode_path(@episode), notice: 'いいねしました。'
    else
      redirect_to episode_path(@episode), alert: 'いいねに失敗しました。'
    end
  end

  def destroy
    @episode = Episode.find(params[:episode_id])
    @like = @episode.likes.find_by(guest_token: session[:guest])
    if @like.destroy
      redirect_to episode_path(@episode), notice: 'いいねを取り消しました。'
    else
      redirect_to episode_path(@episode), alert: 'いいねの取り消しに失敗しました。'
    end
  end
end

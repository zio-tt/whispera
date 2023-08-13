class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
    # エピソード一覧ページの表示
  end

  def show
    @episode = Episode.find(params[:id])
    # エピソード詳細ページの表示
  end

  def new
    @episode = Episode.new
    # エピソード投稿ページの表示
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to episodes_path, notice: 'エピソードが投稿されました。'
    else
      render :new
    end
  end

  private

  def episode_params
    params.require(:episode).permit(:title, :content, :theme)
  end
end

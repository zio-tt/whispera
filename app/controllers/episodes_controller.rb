class EpisodesController < ApplicationController
  before_action :set_episode, only: %i[show edit update destroy]
  before_action :session_confirmation, only: %i[edit update destroy]
  before_action :set_search, only: %i[index]
  before_action :which_page?

  def index
    @themes = Episode::THEMES
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    @episode.guest_token = session[:guest]
    if @episode.save
      redirect_to episodes_path, notice: 'エピソードが投稿されました。'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @episode.update(episode_params)
      redirect_to episode_path(@episode), notice: "更新しました"
    end
  end

  def destroy
    if @episode.destroy
      redirect_to episodes_path, notice: "削除しました"
    else
      redirect_to episode_path(@episode), alert: "削除に失敗しました"
    end
  end

  private

  def set_episode
    @episode = Episode.find(params[:id])
  end

  def session_confirmation
    unless session[:guest] == @episode.guest_token
      redirect_to episodes_path, alert: "権限がありません"
    end
  end

  def episode_params
    params.require(:episode).permit(:title, :content, :theme)
  end

  def set_search
    @q = Episode.ransack(params[:q])
    @episodes = @q.result(distinct: true).order(created_at: :desc).page(params[:page]).per(8)
  end

  def which_page?
    @page = action_name
  end

end

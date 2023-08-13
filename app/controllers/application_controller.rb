class ApplicationController < ActionController::Base
  before_action :guest_token?

  private

  def guest_token?
    if session[:guest].nil?
      session[:guest] = SecureRandom.hex(10)
      redirect_to root_path
    end
  end
end

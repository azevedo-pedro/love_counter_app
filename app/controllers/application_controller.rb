class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_theme

  def set_theme
    cookies[:theme] = params[:theme] if params[:theme].present?
  end
end

class ThemeController < ApplicationController
  def switch
    cookies[:theme] = { value: params[:theme], expires: 1.year.from_now }
    redirect_back(fallback_location: public_relationship_path(params[:id]))
  end
end 
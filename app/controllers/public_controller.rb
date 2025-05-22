class PublicController < ApplicationController
  def show
    @relationship = Relationship.find(params[:id])
    @photos = @relationship.photos
  end
  
end

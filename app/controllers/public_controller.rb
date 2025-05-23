class PublicController < ApplicationController
  def show
    @relationship = Relationship.find(params[:id])
    @photos = @relationship.photos
    @duration = @relationship.duration_parts

  end
  
end

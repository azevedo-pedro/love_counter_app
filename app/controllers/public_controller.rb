class PublicController < ApplicationController
  def index
    @relationship = Relationship.first
    @photos = @relationship.photos
    @duration = @relationship.duration_parts
  end
  def show
    if params[:id] == nil
      @relationship = Relationship.first
    else
      @relationship = Relationship.find(params[:id])
    end
    @photos = @relationship.photos
    @duration = @relationship.duration_parts
  end
end

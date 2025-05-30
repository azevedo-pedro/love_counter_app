class PublicController < ApplicationController
  def index
    @relationship = Relationship.first
    @photos = @relationship.photos
    @duration = @relationship.duration_parts
    render Views::Public::Index.new(@relationship, @photos, @duration)
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

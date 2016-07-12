class ListsController < ApplicationController

  def index
    @places = Place.order :name
  end

  def show
    @place = Place.find(params[:place_id])
  end
end

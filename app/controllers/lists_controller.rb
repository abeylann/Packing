class ListsController < ApplicationController

  # GET /lists
  # GET /lists.json
  def index
    @places = Place.order :name
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @place = Place.find(params[:place_id])
  end
end

class ListsController < ApplicationController

  # GET /lists
  # GET /lists.json
  def index
    # @lists = List.search(params[:search])
    @places = Place.all
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @lists = List.where(:place_id => params[:place_id])
    @place = Place.find(params[:place_id])
  end
  
  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.fetch(:list, {})
    end

    def list_params
      params.require(:list).permit(:place_id)
    end
end

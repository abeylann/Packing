class ListsController < ApplicationController

  # GET /lists
  # GET /lists.json
  def index
    # @lists = List.search(params[:search])
    @places = Place.pluck(:name, :id).sort
    @places = Place.select(:name).map(&:name).uniq
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
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

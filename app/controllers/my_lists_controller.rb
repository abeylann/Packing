class MyListsController < ApplicationController
   before_action :set_my_list, only: [:show, :edit, :update, :destroy]

  # GET /my_lists
  # GET /my_lists.json
  def index
    @my_lists = MyList.all
  end

  # GET /my_lists/1
  # GET /my_lists/1.json
  def show
    @my_lists = List.new
  end

  # GET /my_lists/new
  def new
    @list = MyList.new
  end

  # GET /my_lists/1/edit
  def edit
  end

  # POST /my_lists
  # POST /my_lists.json
  def create
    @my_list = MyList.new#(my_list_params)

    # respond_to do |format|
    #   if @list.save
    #     format.html { redirect_to @my_list, notice: 'My list was successfully created.' }
    #     format.json { render :show, status: :created, location: @my_list }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @my_list.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /my_lists/1
  # PATCH/PUT /my_lists/1.json
  def update
    respond_to do |format|
      if @my_list.update(my_list_params)
        format.html { redirect_to @my_list, notice: 'My list was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_list }
      else
        format.html { render :edit }
        format.json { render json: @my_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_lists/1
  # DELETE /my_lists/1.json
  def destroy
    @my_list.destroy
    respond_to do |format|
      format.html { redirect_to my_lists_url, notice: 'My list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_list
      @my_list = MyList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_list_params
      params.require(:my_list).permit(:place_id, :name, :date)
    end
end

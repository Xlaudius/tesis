class FurnitureCoversController < ApplicationController
  before_action :set_furniture_cover, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /furniture_covers
  # GET /furniture_covers.json
  def index
    @furniture_covers = FurnitureCover.all
  end

  # GET /furniture_covers/1
  # GET /furniture_covers/1.json
  def show
  end

  # GET /furniture_covers/new
  def new
    @furniture_cover = FurnitureCover.new
  end

  # GET /furniture_covers/1/edit
  def edit
  end

  # POST /furniture_covers
  # POST /furniture_covers.json
  def create
    @furniture_cover = FurnitureCover.new(furniture_cover_params)

    respond_to do |format|
      if @furniture_cover.save
        format.html { redirect_to @furniture_cover, notice: 'Furniture cover was successfully created.' }
        format.json { render :show, status: :created, location: @furniture_cover }
      else
        format.html { render :new }
        format.json { render json: @furniture_cover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furniture_covers/1
  # PATCH/PUT /furniture_covers/1.json
  def update
    respond_to do |format|
      if @furniture_cover.update(furniture_cover_params)
        format.html { redirect_to @furniture_cover, notice: 'Furniture cover was successfully updated.' }
        format.json { render :show, status: :ok, location: @furniture_cover }
      else
        format.html { render :edit }
        format.json { render json: @furniture_cover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furniture_covers/1
  # DELETE /furniture_covers/1.json
  def destroy
    @furniture_cover.destroy
    respond_to do |format|
      format.html { redirect_to furniture_covers_url, notice: 'Furniture cover was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furniture_cover
      @furniture_cover = FurnitureCover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def furniture_cover_params
      params.require(:furniture_cover).permit(:name, :value)
    end
end

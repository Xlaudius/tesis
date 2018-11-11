class PropertyStairsController < ApplicationController
  before_action :set_property_stair, only: [:show, :edit, :update, :destroy]

  # GET /property_stairs
  # GET /property_stairs.json
  def index
    @property_stairs = PropertyStair.all
  end

  # GET /property_stairs/1
  # GET /property_stairs/1.json
  def show
  end

  # GET /property_stairs/new
  def new
    @property_stair = PropertyStair.new
  end

  # GET /property_stairs/1/edit
  def edit
  end

  # POST /property_stairs
  # POST /property_stairs.json
  def create
    @property_stair = PropertyStair.new(property_stair_params)

    respond_to do |format|
      if @property_stair.save
        format.html { redirect_to @property_stair, notice: 'Property stair was successfully created.' }
        format.json { render :show, status: :created, location: @property_stair }
      else
        format.html { render :new }
        format.json { render json: @property_stair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_stairs/1
  # PATCH/PUT /property_stairs/1.json
  def update
    respond_to do |format|
      if @property_stair.update(property_stair_params)
        format.html { redirect_to @property_stair, notice: 'Property stair was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_stair }
      else
        format.html { render :edit }
        format.json { render json: @property_stair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_stairs/1
  # DELETE /property_stairs/1.json
  def destroy
    @property_stair.destroy
    respond_to do |format|
      format.html { redirect_to property_stairs_url, notice: 'Property stair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_stair
      @property_stair = PropertyStair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_stair_params
      params.require(:property_stair).permit(:property_id, :stair_id, :quality_id)
    end
end

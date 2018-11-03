class BetweenFloorSlapsController < ApplicationController
  before_action :set_between_floor_slap, only: [:show, :edit, :update, :destroy]

  # GET /between_floor_slaps
  # GET /between_floor_slaps.json
  def index
    @between_floor_slaps = BetweenFloorSlap.all
  end

  # GET /between_floor_slaps/1
  # GET /between_floor_slaps/1.json
  def show
  end

  # GET /between_floor_slaps/new
  def new
    @between_floor_slap = BetweenFloorSlap.new
  end

  # GET /between_floor_slaps/1/edit
  def edit
  end

  # POST /between_floor_slaps
  # POST /between_floor_slaps.json
  def create
    @between_floor_slap = BetweenFloorSlap.new(between_floor_slap_params)

    respond_to do |format|
      if @between_floor_slap.save
        format.html { redirect_to @between_floor_slap, notice: 'Between floor slap was successfully created.' }
        format.json { render :show, status: :created, location: @between_floor_slap }
      else
        format.html { render :new }
        format.json { render json: @between_floor_slap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /between_floor_slaps/1
  # PATCH/PUT /between_floor_slaps/1.json
  def update
    respond_to do |format|
      if @between_floor_slap.update(between_floor_slap_params)
        format.html { redirect_to @between_floor_slap, notice: 'Between floor slap was successfully updated.' }
        format.json { render :show, status: :ok, location: @between_floor_slap }
      else
        format.html { render :edit }
        format.json { render json: @between_floor_slap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /between_floor_slaps/1
  # DELETE /between_floor_slaps/1.json
  def destroy
    @between_floor_slap.destroy
    respond_to do |format|
      format.html { redirect_to between_floor_slaps_url, notice: 'Between floor slap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_between_floor_slap
      @between_floor_slap = BetweenFloorSlap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def between_floor_slap_params
      params.require(:between_floor_slap).permit(:name, :value)
    end
end

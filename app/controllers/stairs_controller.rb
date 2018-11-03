class StairsController < ApplicationController
  before_action :set_stair, only: [:show, :edit, :update, :destroy]

  # GET /stairs
  # GET /stairs.json
  def index
    @stairs = Stair.all
  end

  # GET /stairs/1
  # GET /stairs/1.json
  def show
  end

  # GET /stairs/new
  def new
    @stair = Stair.new
  end

  # GET /stairs/1/edit
  def edit
  end

  # POST /stairs
  # POST /stairs.json
  def create
    @stair = Stair.new(stair_params)

    respond_to do |format|
      if @stair.save
        format.html { redirect_to @stair, notice: 'Stair was successfully created.' }
        format.json { render :show, status: :created, location: @stair }
      else
        format.html { render :new }
        format.json { render json: @stair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stairs/1
  # PATCH/PUT /stairs/1.json
  def update
    respond_to do |format|
      if @stair.update(stair_params)
        format.html { redirect_to @stair, notice: 'Stair was successfully updated.' }
        format.json { render :show, status: :ok, location: @stair }
      else
        format.html { render :edit }
        format.json { render json: @stair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stairs/1
  # DELETE /stairs/1.json
  def destroy
    @stair.destroy
    respond_to do |format|
      format.html { redirect_to stairs_url, notice: 'Stair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stair
      @stair = Stair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stair_params
      params.require(:stair).permit(:name, :value)
    end
end

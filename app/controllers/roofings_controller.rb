class RoofingsController < ApplicationController
  before_action :set_roofing, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /roofings
  # GET /roofings.json
  def index
    @roofings = Roofing.all
  end

  # GET /roofings/1
  # GET /roofings/1.json
  def show
  end

  # GET /roofings/new
  def new
    @roofing = Roofing.new
  end

  # GET /roofings/1/edit
  def edit
  end

  # POST /roofings
  # POST /roofings.json
  def create
    @roofing = Roofing.new(roofing_params)

    respond_to do |format|
      if @roofing.save
        format.html { redirect_to @roofing, notice: 'Roofing was successfully created.' }
        format.json { render :show, status: :created, location: @roofing }
      else
        format.html { render :new }
        format.json { render json: @roofing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roofings/1
  # PATCH/PUT /roofings/1.json
  def update
    respond_to do |format|
      if @roofing.update(roofing_params)
        format.html { redirect_to @roofing, notice: 'Roofing was successfully updated.' }
        format.json { render :show, status: :ok, location: @roofing }
      else
        format.html { render :edit }
        format.json { render json: @roofing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roofings/1
  # DELETE /roofings/1.json
  def destroy
    @roofing.destroy
    respond_to do |format|
      format.html { redirect_to roofings_url, notice: 'Roofing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roofing
      @roofing = Roofing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roofing_params
      params.require(:roofing).permit(:name, :value)
    end
end

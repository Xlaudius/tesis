class ServiceYardsController < ApplicationController
  before_action :set_service_yard, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /service_yards
  # GET /service_yards.json
  def index
    @service_yards = ServiceYard.all
  end

  # GET /service_yards/1
  # GET /service_yards/1.json
  def show
  end

  # GET /service_yards/new
  def new
    @service_yard = ServiceYard.new
  end

  # GET /service_yards/1/edit
  def edit
  end

  # POST /service_yards
  # POST /service_yards.json
  def create
    @service_yard = ServiceYard.new(service_yard_params)

    respond_to do |format|
      if @service_yard.save
        format.html { redirect_to @service_yard, notice: 'Service yard was successfully created.' }
        format.json { render :show, status: :created, location: @service_yard }
      else
        format.html { render :new }
        format.json { render json: @service_yard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_yards/1
  # PATCH/PUT /service_yards/1.json
  def update
    respond_to do |format|
      if @service_yard.update(service_yard_params)
        format.html { redirect_to @service_yard, notice: 'Service yard was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_yard }
      else
        format.html { render :edit }
        format.json { render json: @service_yard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_yards/1
  # DELETE /service_yards/1.json
  def destroy
    @service_yard.destroy
    respond_to do |format|
      format.html { redirect_to service_yards_url, notice: 'Service yard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_yard
      @service_yard = ServiceYard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_yard_params
      params.require(:service_yard).permit(:img, :mts2, :property_id, attachments: [])
    end
end

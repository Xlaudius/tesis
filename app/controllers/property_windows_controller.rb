class PropertyWindowsController < ApplicationController
  before_action :set_property_window, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_windows
  # GET /property_windows.json
  def index
    @property_windows = PropertyWindow.all
  end

  # GET /property_windows/1
  # GET /property_windows/1.json
  def show
  end

  # GET /property_windows/new
  def new
    @property_window = PropertyWindow.new
  end

  # GET /property_windows/1/edit
  def edit
  end

  # POST /property_windows
  # POST /property_windows.json
  def create
    @property_window = PropertyWindow.new(property_window_params)

    respond_to do |format|
      if @property_window.save
        format.html { redirect_to @property_window, notice: 'Property window was successfully created.' }
        format.json { render :show, status: :created, location: @property_window }
      else
        format.html { render :new }
        format.json { render json: @property_window.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_windows/1
  # PATCH/PUT /property_windows/1.json
  def update
    respond_to do |format|
      if @property_window.update(property_window_params)
        format.html { redirect_to @property_window, notice: 'Property window was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_window }
      else
        format.html { render :edit }
        format.json { render json: @property_window.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_windows/1
  # DELETE /property_windows/1.json
  def destroy
    @property_window.destroy
    respond_to do |format|
      format.html { redirect_to property_windows_url, notice: 'Property window was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_window
      @property_window = PropertyWindow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_window_params
      params.require(:property_window).permit(:window_id, :property_id, :other, :protections, :quality_id)
    end
end
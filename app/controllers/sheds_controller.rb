class ShedsController < ApplicationController
  before_action :set_shed, only: [:show, :edit, :update, :destroy]

  # GET /sheds
  # GET /sheds.json
  def index
    @sheds = Shed.all
  end

  # GET /sheds/1
  # GET /sheds/1.json
  def show
  end

  # GET /sheds/new
  def new
    @shed = Shed.new
  end

  # GET /sheds/1/edit
  def edit
  end

  # POST /sheds
  # POST /sheds.json
  def create
    @shed = Shed.new(shed_params)

    respond_to do |format|
      if @shed.save
        format.html { redirect_to @shed, notice: 'Shed was successfully created.' }
        format.json { render :show, status: :created, location: @shed }
      else
        format.html { render :new }
        format.json { render json: @shed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheds/1
  # PATCH/PUT /sheds/1.json
  def update
    respond_to do |format|
      if @shed.update(shed_params)
        format.html { redirect_to @shed, notice: 'Shed was successfully updated.' }
        format.json { render :show, status: :ok, location: @shed }
      else
        format.html { render :edit }
        format.json { render json: @shed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheds/1
  # DELETE /sheds/1.json
  def destroy
    @shed.destroy
    respond_to do |format|
      format.html { redirect_to sheds_url, notice: 'Shed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shed
      @shed = Shed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shed_params
      params.require(:shed).permit(:name)
    end
end

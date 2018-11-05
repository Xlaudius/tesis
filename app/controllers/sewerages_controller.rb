class SeweragesController < ApplicationController
  before_action :set_sewerage, only: [:show, :edit, :update, :destroy]

  # GET /sewerages
  # GET /sewerages.json
  def index
    @sewerages = Sewerage.all
  end

  # GET /sewerages/1
  # GET /sewerages/1.json
  def show
  end

  # GET /sewerages/new
  def new
    @sewerage = Sewerage.new
  end

  # GET /sewerages/1/edit
  def edit
  end

  # POST /sewerages
  # POST /sewerages.json
  def create
    @sewerage = Sewerage.new(sewerage_params)

    respond_to do |format|
      if @sewerage.save
        format.html { redirect_to @sewerage, notice: 'Sewerage was successfully created.' }
        format.json { render :show, status: :created, location: @sewerage }
      else
        format.html { render :new }
        format.json { render json: @sewerage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sewerages/1
  # PATCH/PUT /sewerages/1.json
  def update
    respond_to do |format|
      if @sewerage.update(sewerage_params)
        format.html { redirect_to @sewerage, notice: 'Sewerage was successfully updated.' }
        format.json { render :show, status: :ok, location: @sewerage }
      else
        format.html { render :edit }
        format.json { render json: @sewerage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sewerages/1
  # DELETE /sewerages/1.json
  def destroy
    @sewerage.destroy
    respond_to do |format|
      format.html { redirect_to sewerages_url, notice: 'Sewerage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sewerage
      @sewerage = Sewerage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sewerage_params
      params.require(:sewerage).permit(:name, :value)
    end
end

class ExteriorClosuresController < ApplicationController
  before_action :set_exterior_closure, only: [:show, :edit, :update, :destroy]

  # GET /exterior_closures
  # GET /exterior_closures.json
  def index
    @exterior_closures = ExteriorClosure.all
  end

  # GET /exterior_closures/1
  # GET /exterior_closures/1.json
  def show
  end

  # GET /exterior_closures/new
  def new
    @exterior_closure = ExteriorClosure.new
  end

  # GET /exterior_closures/1/edit
  def edit
  end

  # POST /exterior_closures
  # POST /exterior_closures.json
  def create
    @exterior_closure = ExteriorClosure.new(exterior_closure_params)

    respond_to do |format|
      if @exterior_closure.save
        format.html { redirect_to @exterior_closure, notice: 'Exterior closure was successfully created.' }
        format.json { render :show, status: :created, location: @exterior_closure }
      else
        format.html { render :new }
        format.json { render json: @exterior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exterior_closures/1
  # PATCH/PUT /exterior_closures/1.json
  def update
    respond_to do |format|
      if @exterior_closure.update(exterior_closure_params)
        format.html { redirect_to @exterior_closure, notice: 'Exterior closure was successfully updated.' }
        format.json { render :show, status: :ok, location: @exterior_closure }
      else
        format.html { render :edit }
        format.json { render json: @exterior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exterior_closures/1
  # DELETE /exterior_closures/1.json
  def destroy
    @exterior_closure.destroy
    respond_to do |format|
      format.html { redirect_to exterior_closures_url, notice: 'Exterior closure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exterior_closure
      @exterior_closure = ExteriorClosure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exterior_closure_params
      params.require(:exterior_closure).permit(:name, :value)
    end
end

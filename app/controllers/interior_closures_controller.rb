class InteriorClosuresController < ApplicationController
  before_action :set_interior_closure, only: [:show, :edit, :update, :destroy]

  # GET /interior_closures
  # GET /interior_closures.json
  def index
    @interior_closures = InteriorClosure.all
  end

  # GET /interior_closures/1
  # GET /interior_closures/1.json
  def show
  end

  # GET /interior_closures/new
  def new
    @interior_closure = InteriorClosure.new
  end

  # GET /interior_closures/1/edit
  def edit
  end

  # POST /interior_closures
  # POST /interior_closures.json
  def create
    @interior_closure = InteriorClosure.new(interior_closure_params)

    respond_to do |format|
      if @interior_closure.save
        format.html { redirect_to @interior_closure, notice: 'Interior closure was successfully created.' }
        format.json { render :show, status: :created, location: @interior_closure }
      else
        format.html { render :new }
        format.json { render json: @interior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interior_closures/1
  # PATCH/PUT /interior_closures/1.json
  def update
    respond_to do |format|
      if @interior_closure.update(interior_closure_params)
        format.html { redirect_to @interior_closure, notice: 'Interior closure was successfully updated.' }
        format.json { render :show, status: :ok, location: @interior_closure }
      else
        format.html { render :edit }
        format.json { render json: @interior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interior_closures/1
  # DELETE /interior_closures/1.json
  def destroy
    @interior_closure.destroy
    respond_to do |format|
      format.html { redirect_to interior_closures_url, notice: 'Interior closure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interior_closure
      @interior_closure = InteriorClosure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interior_closure_params
      params.require(:interior_closure).permit(:name, :value)
    end
end

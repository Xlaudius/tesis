class SideWalksController < ApplicationController
  before_action :set_side_walk, only: [:show, :edit, :update, :destroy]

  # GET /side_walks
  # GET /side_walks.json
  def index
    @side_walks = SideWalk.all
  end

  # GET /side_walks/1
  # GET /side_walks/1.json
  def show
  end

  # GET /side_walks/new
  def new
    @side_walk = SideWalk.new
  end

  # GET /side_walks/1/edit
  def edit
  end

  # POST /side_walks
  # POST /side_walks.json
  def create
    @side_walk = SideWalk.new(side_walk_params)

    respond_to do |format|
      if @side_walk.save
        format.html { redirect_to @side_walk, notice: 'Side walk was successfully created.' }
        format.json { render :show, status: :created, location: @side_walk }
      else
        format.html { render :new }
        format.json { render json: @side_walk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /side_walks/1
  # PATCH/PUT /side_walks/1.json
  def update
    respond_to do |format|
      if @side_walk.update(side_walk_params)
        format.html { redirect_to @side_walk, notice: 'Side walk was successfully updated.' }
        format.json { render :show, status: :ok, location: @side_walk }
      else
        format.html { render :edit }
        format.json { render json: @side_walk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /side_walks/1
  # DELETE /side_walks/1.json
  def destroy
    @side_walk.destroy
    respond_to do |format|
      format.html { redirect_to side_walks_url, notice: 'Side walk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_side_walk
      @side_walk = SideWalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def side_walk_params
      params.require(:side_walk).permit(:name, :value)
    end
end

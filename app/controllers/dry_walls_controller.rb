class DryWallsController < ApplicationController
  before_action :set_dry_wall, only: [:show, :edit, :update, :destroy]

  # GET /dry_walls
  # GET /dry_walls.json
  def index
    @dry_walls = DryWall.all
  end

  # GET /dry_walls/1
  # GET /dry_walls/1.json
  def show
  end

  # GET /dry_walls/new
  def new
    @dry_wall = DryWall.new
  end

  # GET /dry_walls/1/edit
  def edit
  end

  # POST /dry_walls
  # POST /dry_walls.json
  def create
    @dry_wall = DryWall.new(dry_wall_params)

    respond_to do |format|
      if @dry_wall.save
        format.html { redirect_to @dry_wall, notice: 'Dry wall was successfully created.' }
        format.json { render :show, status: :created, location: @dry_wall }
      else
        format.html { render :new }
        format.json { render json: @dry_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dry_walls/1
  # PATCH/PUT /dry_walls/1.json
  def update
    respond_to do |format|
      if @dry_wall.update(dry_wall_params)
        format.html { redirect_to @dry_wall, notice: 'Dry wall was successfully updated.' }
        format.json { render :show, status: :ok, location: @dry_wall }
      else
        format.html { render :edit }
        format.json { render json: @dry_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dry_walls/1
  # DELETE /dry_walls/1.json
  def destroy
    @dry_wall.destroy
    respond_to do |format|
      format.html { redirect_to dry_walls_url, notice: 'Dry wall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dry_wall
      @dry_wall = DryWall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dry_wall_params
      params.require(:dry_wall).permit(:name, :value)
    end
end

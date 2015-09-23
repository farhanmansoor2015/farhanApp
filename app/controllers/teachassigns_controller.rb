class TeachassignsController < ApplicationController
  before_action :set_teachassign, only: [:show, :edit, :update, :destroy]

  # GET /teachassigns
  # GET /teachassigns.json
  def index
    @teachassigns = Teachassign.all
  end

  # GET /teachassigns/1
  # GET /teachassigns/1.json
  def show
  end

  # GET /teachassigns/new
  def new
    @teachassign = Teachassign.new
  end

  # GET /teachassigns/1/edit
  def edit
  end

  # POST /teachassigns
  # POST /teachassigns.json
  def create
    @teachassign = Teachassign.new(teachassign_params)

    respond_to do |format|
      if @teachassign.save
        format.html { redirect_to @teachassign, notice: 'Teachassign was successfully created.' }
        format.json { render :show, status: :created, location: @teachassign }
      else
        format.html { render :new }
        format.json { render json: @teachassign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachassigns/1
  # PATCH/PUT /teachassigns/1.json
  def update
    respond_to do |format|
      if @teachassign.update(teachassign_params)
        format.html { redirect_to @teachassign, notice: 'Teachassign was successfully updated.' }
        format.json { render :show, status: :ok, location: @teachassign }
      else
        format.html { render :edit }
        format.json { render json: @teachassign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachassigns/1
  # DELETE /teachassigns/1.json
  def destroy
    @teachassign.destroy
    respond_to do |format|
      format.html { redirect_to teachassigns_url, notice: 'Teachassign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teachassign
      @teachassign = Teachassign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teachassign_params
      params.require(:teachassign).permit(:faculty_id, :semester_id, :course_id, :session__id)
    end
end

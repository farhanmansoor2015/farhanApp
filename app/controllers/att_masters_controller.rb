class AttMastersController < ApplicationController
  before_action :set_att_master, only: [:show, :edit, :update, :destroy]

  # GET /att_masters
  # GET /att_masters.json
  def index
    @att_masters = AttMaster.all
  end

  # GET /att_masters/1
  # GET /att_masters/1.json
  def show
  end

  # GET /att_masters/new
  def new
    @att_master = AttMaster.new
  end

  # GET /att_masters/1/edit
  def edit
  end

  # POST /att_masters
  # POST /att_masters.json
  def create
    @att_master = AttMaster.new(att_master_params)

    respond_to do |format|
      if @att_master.save
        format.html { redirect_to @att_master, notice: 'Att master was successfully created.' }
        format.json { render :show, status: :created, location: @att_master }
      else
        format.html { render :new }
        format.json { render json: @att_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /att_masters/1
  # PATCH/PUT /att_masters/1.json
  def update
    respond_to do |format|
      if @att_master.update(att_master_params)
        format.html { redirect_to @att_master, notice: 'Att master was successfully updated.' }
        format.json { render :show, status: :ok, location: @att_master }
      else
        format.html { render :edit }
        format.json { render json: @att_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /att_masters/1
  # DELETE /att_masters/1.json
  def destroy
    @att_master.destroy
    respond_to do |format|
      format.html { redirect_to att_masters_url, notice: 'Att master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_att_master
      @att_master = AttMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def att_master_params
      params.require(:att_master).permit(:date, :topics, :date_marked, :course_id, :teachassign_id)
    end
end

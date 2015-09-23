class AttDetailsController < ApplicationController
  before_action :set_att_detail, only: [:show, :edit, :update, :destroy]

  # GET /att_details
  # GET /att_details.json
  def index
    @att_details = AttDetail.all
  end

  # GET /att_details/1
  # GET /att_details/1.json
  def show
  end

  # GET /att_details/new
  def new
    @att_detail = AttDetail.new
  end

  # GET /att_details/1/edit
  def edit
  end

  # POST /att_details
  # POST /att_details.json
  def create
    @att_detail = AttDetail.new(att_detail_params)

    respond_to do |format|
      if @att_detail.save
        format.html { redirect_to @att_detail, notice: 'Att detail was successfully created.' }
        format.json { render :show, status: :created, location: @att_detail }
      else
        format.html { render :new }
        format.json { render json: @att_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /att_details/1
  # PATCH/PUT /att_details/1.json
  def update
    respond_to do |format|
      if @att_detail.update(att_detail_params)
        format.html { redirect_to @att_detail, notice: 'Att detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @att_detail }
      else
        format.html { render :edit }
        format.json { render json: @att_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /att_details/1
  # DELETE /att_details/1.json
  def destroy
    @att_detail.destroy
    respond_to do |format|
      format.html { redirect_to att_details_url, notice: 'Att detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_att_detail
      @att_detail = AttDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def att_detail_params
      params.require(:att_detail).permit(:status, :student_id, :att_master_id)
    end
end

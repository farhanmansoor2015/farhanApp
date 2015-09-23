class SessionSController < ApplicationController
  before_action :set_session_, only: [:show, :edit, :update, :destroy]

  # GET /session_s
  # GET /session_s.json
  def index
    @session_s = Session.all
  end

  # GET /session_s/1
  # GET /session_s/1.json
  def show
  end

  # GET /session_s/new
  def new
    @session_ = Session.new
  end

  # GET /session_s/1/edit
  def edit
  end

  # POST /session_s
  # POST /session_s.json
  def create
    @session_ = Session.new(session__params)

    respond_to do |format|
      if @session_.save
        format.html { redirect_to @session_, notice: 'Session  was successfully created.' }
        format.json { render :show, status: :created, location: @session_ }
      else
        format.html { render :new }
        format.json { render json: @session_.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_s/1
  # PATCH/PUT /session_s/1.json
  def update
    respond_to do |format|
      if @session_.update(session__params)
        format.html { redirect_to @session_, notice: 'Session  was successfully updated.' }
        format.json { render :show, status: :ok, location: @session_ }
      else
        format.html { render :edit }
        format.json { render json: @session_.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_s/1
  # DELETE /session_s/1.json
  def destroy
    @session_.destroy
    respond_to do |format|
      format.html { redirect_to session_s_url, notice: 'Session  was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_
      @session_ = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session__params
      params.require(:session_).permit(:description, :start, :end, :status, :program_id)
    end
end

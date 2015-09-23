class StuRegSemestersController < ApplicationController
  before_action :set_stu_reg_semester, only: [:show, :edit, :update, :destroy]

  # GET /stu_reg_semesters
  # GET /stu_reg_semesters.json
  def index
    @stu_reg_semesters = StuRegSemester.all
  end

  # GET /stu_reg_semesters/1
  # GET /stu_reg_semesters/1.json
  def show
  end

  # GET /stu_reg_semesters/new
  def new
    @stu_reg_semester = StuRegSemester.new
  end

  # GET /stu_reg_semesters/1/edit
  def edit
  end

  # POST /stu_reg_semesters
  # POST /stu_reg_semesters.json
  def create
    @stu_reg_semester = StuRegSemester.new(stu_reg_semester_params)

    respond_to do |format|
      if @stu_reg_semester.save
        format.html { redirect_to @stu_reg_semester, notice: 'Stu reg semester was successfully created.' }
        format.json { render :show, status: :created, location: @stu_reg_semester }
      else
        format.html { render :new }
        format.json { render json: @stu_reg_semester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stu_reg_semesters/1
  # PATCH/PUT /stu_reg_semesters/1.json
  def update
    respond_to do |format|
      if @stu_reg_semester.update(stu_reg_semester_params)
        format.html { redirect_to @stu_reg_semester, notice: 'Stu reg semester was successfully updated.' }
        format.json { render :show, status: :ok, location: @stu_reg_semester }
      else
        format.html { render :edit }
        format.json { render json: @stu_reg_semester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stu_reg_semesters/1
  # DELETE /stu_reg_semesters/1.json
  def destroy
    @stu_reg_semester.destroy
    respond_to do |format|
      format.html { redirect_to stu_reg_semesters_url, notice: 'Stu reg semester was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stu_reg_semester
      @stu_reg_semester = StuRegSemester.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stu_reg_semester_params
      params.require(:stu_reg_semester).permit(:student_id, :semester_id)
    end
end

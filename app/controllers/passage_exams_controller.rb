class PassageExamsController < ApplicationController
  before_action :set_passage_exam, only: [:show, :edit, :update, :destroy]

  # GET /passage_exams
  # GET /passage_exams.json
  def index
    @passage_exams = PassageExam.all
  end

  # GET /passage_exams/1
  # GET /passage_exams/1.json
  def show
  end

  # GET /passage_exams/new
  def new
    @passage_exam = PassageExam.new
  end

  # GET /passage_exams/1/edit
  def edit
  end

  # POST /passage_exams
  # POST /passage_exams.json
  def create
    @passage_exam = PassageExam.new(passage_exam_params)

    respond_to do |format|
      if @passage_exam.save
        format.html { redirect_to @passage_exam, notice: 'Passage exam was successfully created.' }
        format.json { render :show, status: :created, location: @passage_exam }
      else
        format.html { render :new }
        format.json { render json: @passage_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passage_exams/1
  # PATCH/PUT /passage_exams/1.json
  def update
    respond_to do |format|
      if @passage_exam.update(passage_exam_params)
        format.html { redirect_to @passage_exam, notice: 'Passage exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @passage_exam }
      else
        format.html { render :edit }
        format.json { render json: @passage_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passage_exams/1
  # DELETE /passage_exams/1.json
  def destroy
    @passage_exam.destroy
    respond_to do |format|
      format.html { redirect_to passage_exams_url, notice: 'Passage exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passage_exam
      @passage_exam = PassageExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passage_exam_params
      params.require(:passage_exam).permit(:examan_id, :user_id, :resultat)
    end
end

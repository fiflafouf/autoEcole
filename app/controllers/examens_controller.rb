class ExamensController < ApplicationController
  before_action :set_examen, only: [:show, :edit, :update, :destroy]

  # GET /examens
  # GET /examens.json
  def index
    @examens = Examens.all
  end

  # GET /examens/1
  # GET /examens/1.json
  def show
  end

  # GET /examens/new
  def new
    @examen = Examens.new
  end

  # GET /examens/1/edit
  def edit
  end

  # POST /examens
  # POST /examens.json
  def create
    @examen = Examens.new(examen_params)

    respond_to do |format|
      if @examen.save
        format.html { redirect_to @examen, notice: 'Examens was successfully created.' }
        format.json { render :show, status: :created, location: @examen }
      else
        format.html { render :new }
        format.json { render json: @examen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examens/1
  # PATCH/PUT /examens/1.json
  def update
    respond_to do |format|
      if @examen.update(examen_params)
        format.html { redirect_to @examen, notice: 'Examens was successfully updated.' }
        format.json { render :show, status: :ok, location: @examen }
      else
        format.html { render :edit }
        format.json { render json: @examen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examens/1
  # DELETE /examens/1.json
  def destroy
    @examen.destroy
    respond_to do |format|
      format.html { redirect_to examens_index_url, notice: 'Examens was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examen
      @examen = Examens.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examen_params
      params.require(:examen).permit(:type, :date)
    end
end

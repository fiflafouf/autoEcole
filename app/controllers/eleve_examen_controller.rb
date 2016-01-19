class EleveExamenController < ApplicationController
  before_action :set_eleve_examan, only: [:show, :edit, :update, :destroy]

  # GET /eleve_examen
  # GET /eleve_examen.json
  def index
    @eleve_examen = EleveExaman.all
  end

  # GET /eleve_examen/1
  # GET /eleve_examen/1.json
  def show
  end

  # GET /eleve_examen/new
  def new
    @eleve_examan = EleveExaman.new
  end

  # GET /eleve_examen/1/edit
  def edit
  end

  # POST /eleve_examen
  # POST /eleve_examen.json
  def create
    @eleve_examan = EleveExaman.new(eleve_examan_params)

    respond_to do |format|
      if @eleve_examan.save
        format.html { redirect_to @eleve_examan, notice: 'Eleve examan was successfully created.' }
        format.json { render :show, status: :created, location: @eleve_examan }
      else
        format.html { render :new }
        format.json { render json: @eleve_examan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eleve_examen/1
  # PATCH/PUT /eleve_examen/1.json
  def update
    respond_to do |format|
      if @eleve_examan.update(eleve_examan_params)
        format.html { redirect_to @eleve_examan, notice: 'Eleve examan was successfully updated.' }
        format.json { render :show, status: :ok, location: @eleve_examan }
      else
        format.html { render :edit }
        format.json { render json: @eleve_examan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eleve_examen/1
  # DELETE /eleve_examen/1.json
  def destroy
    @eleve_examan.destroy
    respond_to do |format|
      format.html { redirect_to eleve_examen_url, notice: 'Eleve examan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eleve_examan
      @eleve_examan = EleveExaman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eleve_examan_params
      params.require(:eleve_examan).permit(:examenId, :eleveId, :passer, :score)
    end
end

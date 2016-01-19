class EleveFormulesController < ApplicationController
  before_action :set_eleve_formule, only: [:show, :edit, :update, :destroy]

  # GET /eleve_formules
  # GET /eleve_formules.json
  def index
    @eleve_formules = EleveFormule.all
  end

  # GET /eleve_formules/1
  # GET /eleve_formules/1.json
  def show
  end

  # GET /eleve_formules/new
  def new
    @eleve_formule = EleveFormule.new
  end

  # GET /eleve_formules/1/edit
  def edit
  end

  # POST /eleve_formules
  # POST /eleve_formules.json
  def create
    @eleve_formule = EleveFormule.new(eleve_formule_params)

    respond_to do |format|
      if @eleve_formule.save
        format.html { redirect_to @eleve_formule, notice: 'Eleve formule was successfully created.' }
        format.json { render :show, status: :created, location: @eleve_formule }
      else
        format.html { render :new }
        format.json { render json: @eleve_formule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eleve_formules/1
  # PATCH/PUT /eleve_formules/1.json
  def update
    respond_to do |format|
      if @eleve_formule.update(eleve_formule_params)
        format.html { redirect_to @eleve_formule, notice: 'Eleve formule was successfully updated.' }
        format.json { render :show, status: :ok, location: @eleve_formule }
      else
        format.html { render :edit }
        format.json { render json: @eleve_formule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eleve_formules/1
  # DELETE /eleve_formules/1.json
  def destroy
    @eleve_formule.destroy
    respond_to do |format|
      format.html { redirect_to eleve_formules_url, notice: 'Eleve formule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eleve_formule
      @eleve_formule = EleveFormule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eleve_formule_params
      params.require(:eleve_formule).permit(:eleveId, :formuleId)
    end
end

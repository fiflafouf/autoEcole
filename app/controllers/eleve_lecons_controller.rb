class EleveLeconsController < ApplicationController
  before_action :set_eleve_lecon, only: [:show, :edit, :update, :destroy]

  # GET /eleve_lecons
  # GET /eleve_lecons.json
  def index
    @eleve_lecons = EleveLecon.all
  end

  # GET /eleve_lecons/1
  # GET /eleve_lecons/1.json
  def show
  end

  # GET /eleve_lecons/new
  def new
    @eleve_lecon = EleveLecon.new
  end

  # GET /eleve_lecons/1/edit
  def edit
  end

  # POST /eleve_lecons
  # POST /eleve_lecons.json
  def create
    @eleve_lecon = EleveLecon.new(eleve_lecon_params)

    respond_to do |format|
      if @eleve_lecon.save
        format.html { redirect_to @eleve_lecon, notice: 'Eleve lecon was successfully created.' }
        format.json { render :show, status: :created, location: @eleve_lecon }
      else
        format.html { render :new }
        format.json { render json: @eleve_lecon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eleve_lecons/1
  # PATCH/PUT /eleve_lecons/1.json
  def update
    respond_to do |format|
      if @eleve_lecon.update(eleve_lecon_params)
        format.html { redirect_to @eleve_lecon, notice: 'Eleve lecon was successfully updated.' }
        format.json { render :show, status: :ok, location: @eleve_lecon }
      else
        format.html { render :edit }
        format.json { render json: @eleve_lecon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eleve_lecons/1
  # DELETE /eleve_lecons/1.json
  def destroy
    @eleve_lecon.destroy
    respond_to do |format|
      format.html { redirect_to eleve_lecons_url, notice: 'Eleve lecon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eleve_lecon
      @eleve_lecon = EleveLecon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eleve_lecon_params
      params.require(:eleve_lecon).permit(:eleveId, :leconId)
    end
end

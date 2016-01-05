class LeconConduitesController < ApplicationController
  before_action :set_lecon_conduite, only: [:show, :edit, :update, :destroy]

  # GET /lecon_conduites
  # GET /lecon_conduites.json
  def index
    @lecon_conduites = LeconConduite.all
  end

  # GET /lecon_conduites/1
  # GET /lecon_conduites/1.json
  def show
  end

  # GET /lecon_conduites/new
  def new
    @lecon_conduite = LeconConduite.new
  end

  # GET /lecon_conduites/1/edit
  def edit
  end

  # POST /lecon_conduites
  # POST /lecon_conduites.json
  def create
    @lecon_conduite = LeconConduite.new(lecon_conduite_params)

    respond_to do |format|
      if @lecon_conduite.save
        format.html { redirect_to @lecon_conduite, notice: 'Lecon conduite was successfully created.' }
        format.json { render :show, status: :created, location: @lecon_conduite }
      else
        format.html { render :new }
        format.json { render json: @lecon_conduite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecon_conduites/1
  # PATCH/PUT /lecon_conduites/1.json
  def update
    respond_to do |format|
      if @lecon_conduite.update(lecon_conduite_params)
        format.html { redirect_to @lecon_conduite, notice: 'Lecon conduite was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecon_conduite }
      else
        format.html { render :edit }
        format.json { render json: @lecon_conduite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecon_conduites/1
  # DELETE /lecon_conduites/1.json
  def destroy
    @lecon_conduite.destroy
    respond_to do |format|
      format.html { redirect_to lecon_conduites_url, notice: 'Lecon conduite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecon_conduite
      @lecon_conduite = LeconConduite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecon_conduite_params
      params.require(:lecon_conduite).permit(:id, :date, :heure, :user_id, :user_id)
    end
end

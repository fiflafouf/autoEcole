class LeconsController < ApplicationController
  before_action :set_lecon, only: [:show, :edit, :update, :destroy]

  # GET /lecons
  # GET /lecons.json
  def index
    @lecons = Lecon.all
  end

  # GET /lecons/1
  # GET /lecons/1.json
  def show
  end

  # GET /lecons/new
  def new
    @lecon = Lecon.new
  end

  # GET /lecons/1/edit
  def edit
  end

  # POST /lecons
  # POST /lecons.json
  def create
    @lecon = Lecon.new(lecon_params)

    respond_to do |format|
      if @lecon.save
        format.html { redirect_to @lecon, notice: 'Lecon was successfully created.' }
        format.json { render :show, status: :created, location: @lecon }
      else
        format.html { render :new }
        format.json { render json: @lecon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecons/1
  # PATCH/PUT /lecons/1.json
  def update
    respond_to do |format|
      if @lecon.update(lecon_params)
        format.html { redirect_to @lecon, notice: 'Lecon was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecon }
      else
        format.html { render :edit }
        format.json { render json: @lecon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecons/1
  # DELETE /lecons/1.json
  def destroy
    @lecon.destroy
    respond_to do |format|
      format.html { redirect_to lecons_url, notice: 'Lecon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecon
      @lecon = Lecon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecon_params
      params.require(:lecon).permit(:type, :date, :heure)
    end
end

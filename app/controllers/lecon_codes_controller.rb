class LeconCodesController < ApplicationController
  before_action :set_lecon_code, only: [:show, :edit, :update, :destroy]

  # GET /lecon_codes
  # GET /lecon_codes.json
  def index
    @lecon_codes = LeconCode.all
  end

  # GET /lecon_codes/1
  # GET /lecon_codes/1.json
  def show
  end

  # GET /lecon_codes/new
  def new
    @lecon_code = LeconCode.new
  end

  # GET /lecon_codes/1/edit
  def edit
  end

  # POST /lecon_codes
  # POST /lecon_codes.json
  def create
    @lecon_code = LeconCode.new(lecon_code_params)

    respond_to do |format|
      if @lecon_code.save
        format.html { redirect_to @lecon_code, notice: 'Lecon code was successfully created.' }
        format.json { render :show, status: :created, location: @lecon_code }
      else
        format.html { render :new }
        format.json { render json: @lecon_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecon_codes/1
  # PATCH/PUT /lecon_codes/1.json
  def update
    respond_to do |format|
      if @lecon_code.update(lecon_code_params)
        format.html { redirect_to @lecon_code, notice: 'Lecon code was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecon_code }
      else
        format.html { render :edit }
        format.json { render json: @lecon_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecon_codes/1
  # DELETE /lecon_codes/1.json
  def destroy
    @lecon_code.destroy
    respond_to do |format|
      format.html { redirect_to lecon_codes_url, notice: 'Lecon code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecon_code
      @lecon_code = LeconCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecon_code_params
      params.require(:lecon_code).permit(:id, :date, :heure)
    end
end

class AssisterLeconCodesController < ApplicationController
  before_action :set_assister_lecon_code, only: [:show, :edit, :update, :destroy]

  # GET /assister_lecon_codes
  # GET /assister_lecon_codes.json
  def index
    @assister_lecon_codes = AssisterLeconCode.all
  end

  # GET /assister_lecon_codes/1
  # GET /assister_lecon_codes/1.json
  def show
  end

  # GET /assister_lecon_codes/new
  def new
    @assister_lecon_code = AssisterLeconCode.new
  end

  # GET /assister_lecon_codes/1/edit
  def edit
  end

  # POST /assister_lecon_codes
  # POST /assister_lecon_codes.json
  def create
    @assister_lecon_code = AssisterLeconCode.new(assister_lecon_code_params)

    respond_to do |format|
      if @assister_lecon_code.save
        format.html { redirect_to @assister_lecon_code, notice: 'Assister lecon code was successfully created.' }
        format.json { render :show, status: :created, location: @assister_lecon_code }
      else
        format.html { render :new }
        format.json { render json: @assister_lecon_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assister_lecon_codes/1
  # PATCH/PUT /assister_lecon_codes/1.json
  def update
    respond_to do |format|
      if @assister_lecon_code.update(assister_lecon_code_params)
        format.html { redirect_to @assister_lecon_code, notice: 'Assister lecon code was successfully updated.' }
        format.json { render :show, status: :ok, location: @assister_lecon_code }
      else
        format.html { render :edit }
        format.json { render json: @assister_lecon_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assister_lecon_codes/1
  # DELETE /assister_lecon_codes/1.json
  def destroy
    @assister_lecon_code.destroy
    respond_to do |format|
      format.html { redirect_to assister_lecon_codes_url, notice: 'Assister lecon code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assister_lecon_code
      @assister_lecon_code = AssisterLeconCode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assister_lecon_code_params
      params.require(:assister_lecon_code).permit(:lecon_code_id, :user_id)
    end
end

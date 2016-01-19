class LeconTypesController < ApplicationController
  before_action :set_lecon_type, only: [:show, :edit, :update, :destroy]

  # GET /lecon_types
  # GET /lecon_types.json
  def index
    @lecon_types = LeconType.all
  end

  # GET /lecon_types/1
  # GET /lecon_types/1.json
  def show
  end

  # GET /lecon_types/new
  def new
    @lecon_type = LeconType.new
  end

  # GET /lecon_types/1/edit
  def edit
  end

  # POST /lecon_types
  # POST /lecon_types.json
  def create
    @lecon_type = LeconType.new(lecon_type_params)

    respond_to do |format|
      if @lecon_type.save
        format.html { redirect_to @lecon_type, notice: 'Lecon type was successfully created.' }
        format.json { render :show, status: :created, location: @lecon_type }
      else
        format.html { render :new }
        format.json { render json: @lecon_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecon_types/1
  # PATCH/PUT /lecon_types/1.json
  def update
    respond_to do |format|
      if @lecon_type.update(lecon_type_params)
        format.html { redirect_to @lecon_type, notice: 'Lecon type was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecon_type }
      else
        format.html { render :edit }
        format.json { render json: @lecon_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecon_types/1
  # DELETE /lecon_types/1.json
  def destroy
    @lecon_type.destroy
    respond_to do |format|
      format.html { redirect_to lecon_types_url, notice: 'Lecon type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecon_type
      @lecon_type = LeconType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecon_type_params
      params.require(:lecon_type).permit(:name)
    end
end

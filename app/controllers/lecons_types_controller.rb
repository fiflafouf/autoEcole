class LeconsTypesController < ApplicationController
  before_action :set_lecons_type, only: [:show, :edit, :update, :destroy]

  # GET /lecons_types
  # GET /lecons_types.json
  def index
    @lecons_types = LeconsType.all
  end

  # GET /lecons_types/1
  # GET /lecons_types/1.json
  def show
  end

  # GET /lecons_types/new
  def new
    @lecons_type = LeconsType.new
  end

  # GET /lecons_types/1/edit
  def edit
  end

  # POST /lecons_types
  # POST /lecons_types.json
  def create
    @lecons_type = LeconsType.new(lecons_type_params)

    respond_to do |format|
      if @lecons_type.save
        format.html { redirect_to @lecons_type, notice: 'Lecons type was successfully created.' }
        format.json { render :show, status: :created, location: @lecons_type }
      else
        format.html { render :new }
        format.json { render json: @lecons_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecons_types/1
  # PATCH/PUT /lecons_types/1.json
  def update
    respond_to do |format|
      if @lecons_type.update(lecons_type_params)
        format.html { redirect_to @lecons_type, notice: 'Lecons type was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecons_type }
      else
        format.html { render :edit }
        format.json { render json: @lecons_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecons_types/1
  # DELETE /lecons_types/1.json
  def destroy
    @lecons_type.destroy
    respond_to do |format|
      format.html { redirect_to lecons_types_url, notice: 'Lecons type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecons_type
      @lecons_type = LeconsType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecons_type_params
      params.require(:lecons_type).permit(:nom)
    end
end

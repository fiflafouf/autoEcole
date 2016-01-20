class UsersFormulesController < ApplicationController
  before_action :set_users_formule, only: [:show, :edit, :update, :destroy]

  # GET /users_formules
  # GET /users_formules.json
  def index
    @users_formules = UsersFormule.all
  end

  # GET /users_formules/1
  # GET /users_formules/1.json
  def show
  end

  # GET /users_formules/new
  def new
    @users_formule = UsersFormule.new
  end

  # GET /users_formules/1/edit
  def edit
  end

  # POST /users_formules
  # POST /users_formules.json
  def create
    @users_formule = UsersFormule.new(users_formule_params)

    respond_to do |format|
      if @users_formule.save
        format.html { redirect_to @users_formule, notice: 'Users formule was successfully created.' }
        format.json { render :show, status: :created, location: @users_formule }
      else
        format.html { render :new }
        format.json { render json: @users_formule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_formules/1
  # PATCH/PUT /users_formules/1.json
  def update
    respond_to do |format|
      if @users_formule.update(users_formule_params)
        format.html { redirect_to @users_formule, notice: 'Users formule was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_formule }
      else
        format.html { render :edit }
        format.json { render json: @users_formule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_formules/1
  # DELETE /users_formules/1.json
  def destroy
    @users_formule.destroy
    respond_to do |format|
      format.html { redirect_to users_formules_url, notice: 'Users formule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_formule
      @users_formule = UsersFormule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_formule_params
      params.require(:users_formule).permit(:user_id, :formule_id)
    end
end

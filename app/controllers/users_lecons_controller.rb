class UsersLeconsController < ApplicationController
  before_action :set_users_lecon, only: [:show, :edit, :update, :destroy]

  # GET /users_lecons
  # GET /users_lecons.json
  def index
    @users_lecons = UsersLecon.all
  end

  # GET /users_lecons/1
  # GET /users_lecons/1.json
  def show
  end

  # GET /users_lecons/new
  def new
    @users_lecon = UsersLecon.new
  end

  # GET /users_lecons/1/edit
  def edit
  end

  # POST /users_lecons
  # POST /users_lecons.json
  def create
    @users_lecon = UsersLecon.new(users_lecon_params)

    respond_to do |format|
      if @users_lecon.save
        format.html { redirect_to @users_lecon, notice: 'Users lecon was successfully created.' }
        format.json { render :show, status: :created, location: @users_lecon }
      else
        format.html { render :new }
        format.json { render json: @users_lecon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_lecons/1
  # PATCH/PUT /users_lecons/1.json
  def update
    respond_to do |format|
      if @users_lecon.update(users_lecon_params)
        format.html { redirect_to @users_lecon, notice: 'Users lecon was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_lecon }
      else
        format.html { render :edit }
        format.json { render json: @users_lecon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_lecons/1
  # DELETE /users_lecons/1.json
  def destroy
    @users_lecon.destroy
    respond_to do |format|
      format.html { redirect_to users_lecons_url, notice: 'Users lecon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_lecon
      @users_lecon = UsersLecon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_lecon_params
      params.require(:users_lecon).permit(:user_id, :lecon_id)
    end
end

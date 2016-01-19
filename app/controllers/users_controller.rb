class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
  def new
    @users = User.new
  end
    
  # GET /voitures/new
  def new
    @users = User.new
  end

  # GET /voitures/1/edit
  def edit
  end

  # POST /voitures
  # POST /voitures.json
  def create
    @users = User.new(user_params)

    respond_to do |format|
      if @users.save
        format.html { redirect_to @users, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @users }
      else
        format.html { render :new }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voitures/1
  # PATCH/PUT /voitures/1.json
  def update
    respond_to do |format|
      if @users.update(user_params)
        format.html { redirect_to @users, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @users }
      else
        format.html { render :edit }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voitures/1
  # DELETE /voitures/1.json
  def destroy
    @users.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_User
      @users = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
        if current_user.admin?
            params.require(:users).permit(:immatriculation, :km, :modele, :marque)
        elsif current_user.student?
            params.require(:users).permit(:immatriculation, :km, :modele, :marque)
        else 
            params.require(:users).permit(:immatriculation, :km, :modele, :marque)
        end

          
    end
end
    
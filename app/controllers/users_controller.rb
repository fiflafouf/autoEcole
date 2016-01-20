class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
  def new
    @user = User.new
  end

  def show
    set_User
  end

  def edit
    set_User
  end


  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    set_User
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


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
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
       # if :role.admin?
            params.require(:user).permit(:email, :role, :nom, :prenom, :surnom, :addr, :cp, :ville, :dateNaiss, :telFixe, :telMobile, :password, :password_confirmation)
        #elsif :role.student?
         #   params.require(:users).permit(:email, :role, :nom, :prenom, :surnom, :addr, :cp, :ville, :dateNaiss, :telFixe, :telMobile, :user_id)
        #else 
         #   params.require(:users).permit(:email, :role, :nom, :prenom, :surnom, :addr, :cp, :ville, :dateNaiss, :telFixe, :telMobile, :voiture_id)
        #end
     
    end
end
    
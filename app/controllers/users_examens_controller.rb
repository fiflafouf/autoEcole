class UsersExamensController < ApplicationController
  before_action :set_users_examen, only: [:show, :edit, :update, :destroy]

  # GET /users_examens
  # GET /users_examens.json
  def index
    @users_examens = UsersExamens.all
  end

  # GET /users_examens/1
  # GET /users_examens/1.json
  def show
  end

  # GET /users_examens/new
  def new
    @users_examen = UsersExamens.new
  end

  # GET /users_examens/1/edit
  def edit
  end

  # POST /users_examens
  # POST /users_examens.json
  def create
    @users_examen = UsersExamens.new(users_examen_params)

    respond_to do |format|
      if @users_examen.save
        format.html { redirect_to @users_examen, notice: 'Users examens was successfully created.' }
        format.json { render :show, status: :created, location: @users_examen }
      else
        format.html { render :new }
        format.json { render json: @users_examen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_examens/1
  # PATCH/PUT /users_examens/1.json
  def update
    respond_to do |format|
      if @users_examen.update(users_examen_params)
        format.html { redirect_to @users_examen, notice: 'Users examens was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_examen }
      else
        format.html { render :edit }
        format.json { render json: @users_examen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_examens/1
  # DELETE /users_examens/1.json
  def destroy
    @users_examen.destroy
    respond_to do |format|
      format.html { redirect_to users_examens_index_url, notice: 'Users examens was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_examen
      @users_examen = UsersExamens.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_examen_params
      params.require(:users_examen).permit(:examen_id, :user_id, :passer, :score)
    end
end

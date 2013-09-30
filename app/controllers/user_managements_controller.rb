class UserManagementsController < ApplicationController
  before_action :set_user_management, only: [:show, :edit, :update, :destroy]

  # GET /user_managements
  # GET /user_managements.json
  def index
    @users= User.all
  end

  # GET /user_managements/1
  # GET /user_managements/1.json
  def show
  end

  # GET /user_managements/new
  def new
    @user = User.new
  end

  # GET /user_managements/1/edit
  def edit
  end

  # POST /user_managements
  # POST /user_managements.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_management }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_managements/1
  # PATCH/PUT /user_managements/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User management was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_managements/1
  # DELETE /user_managements/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to user_managements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_management
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_management_params
      params[:user]
    end
end
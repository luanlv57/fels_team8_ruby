class Admin::UsersController < ApplicationController

	before_action :logged_in_user
  
  before_action :admin_user,     only: [:destroy ,:edit, :update]
  def fetch_user
    @user = User.find_by_id(params[:id])
  end
  def index
    @users = User.paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.json {render json: @users}
    end
  end
  def show 
    respond_to do |format|
      format.json {render json: @user}
    end
  end
  def edit
    @user = User.find(params[:id])
  end

  def update
    respond_to do |format|
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        format.json { head :no_content, status: :ok }
        flash[:success] = "Profile updated"
        redirect_to @user
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
        flash[:fail] = "Profile updated failed"
        render 'edit'
      end
    end
  end

  def destroy
    respond_to do |format|
      if User.find(params[:id]).destroy
        format.json { head :no_content, status: :ok }
        flash[:success] = "User deleted"
        redirect_to admin_users_url
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)
    end
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
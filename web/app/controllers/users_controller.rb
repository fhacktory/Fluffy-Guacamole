class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    if current_user
      @user_benders = Bender.where(user_id: current_user.id)
    end
  end

  def edit
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:name, :height, :weight)
    end


end

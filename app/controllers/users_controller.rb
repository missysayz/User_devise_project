class UsersController < ApplicationController
before_action :set_user, only:[:show, :edit, :update]

  def index
    
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to foods_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to new_user_registration_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name)

    def set_user
      @user = current_user.foods.find(params[:id])
    end
end

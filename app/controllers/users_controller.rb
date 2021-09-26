class UsersController < ApplicationController
    before_action :find_user, only: %i[edit show update]

    def index
      @users = User.all
    end

  def edit
  end

  def update
         @user.update(users_params)
    redirect_to root_path
  end

  def show
  end

  private

  def users_params
    params.require(:user).permit(:name, :story, :address,:password, :password_confirmation)
  end

  def find_user
    @user = User.find(params[:id])
  end
end

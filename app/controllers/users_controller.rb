class UsersController < ApplicationController
  def index
  	@user=User.new
  	@users=User.all
  end

  def create
  	@user=User.create(user_params)
  	redirect_to root_path
  end

  def destroy
  	@user=User.find(params[:format])
  	@user.destroy
  	redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :avatar)
  end
end

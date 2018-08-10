class UsersController < ApplicationController
  def show
    render status: 200
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id.to_s
      render json: user
    else
      render json: {error: 'user invalid'}, status: 400
    end
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

class SessionsController < ApplicationController
  def create
    user = User.find_by(email: session_params[:email])
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id.to_s
      render json: user, status: 200
    else
      render json: {error: 'incorrect email and/or password'}, status: 400
    end
  end

  def destroy
    session[:user_id] = nil
    render status: 200
  end

  private

  def session_params
    params.require(:user).permit(:email, :password)
  end
end

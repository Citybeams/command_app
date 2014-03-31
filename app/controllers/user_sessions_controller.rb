class UserSessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    flash[:success] = "thanks for logging in! When you come back you'll see your personalized quiz."
    redirect_to subjects_path
    else
      render action 'new'
   end
  end
end

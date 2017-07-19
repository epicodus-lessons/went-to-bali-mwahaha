class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "You've signed in. Browse away!"
      redirect_to '/'
    else
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've signed out!"
    redirect_to '/sign_in'
  end

end

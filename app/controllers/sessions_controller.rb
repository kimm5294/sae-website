class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      if @user.authenticate(params[:password])
        session[:current_user_id] = @user.id
        redirect_to @user
      else
        @errors = ["Email and password combination do not match our records"]
        render "new"
      end
    else
      @errors = ["Email does not match our records"]
      render "new"
    end
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end

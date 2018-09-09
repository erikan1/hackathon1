class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
      @user = User.find_by(email: params[:user][:email])
      @user = User.new if @user.blank?
    if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        @list = List.create
        @user.list = @list.id
        @user.save
          redirect_to @products
      else
        flash[:notice] = "Failed to login, please try again"
        render 'new'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
end

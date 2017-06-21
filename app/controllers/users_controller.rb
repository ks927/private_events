class UsersController < ApplicationController
  def new
  end

  def create
      @user = User.new(user_params)
      if @user.save
          flash[:success] = "User created!"
          sign_in @user
          redirect_to @user
      else
          render :new
      end
  end

  def show
      @user = User.find(params[:id])
      @events = @user.events
      @attended_events = @user.attended_events
      @upcoming_events = @user.upcoming_events
      @prev_events = @user.previous_events
  end
    
  def delete
     if signed_in? 
       sign_out @user
       flash[:success] = "You are signed out!"
       redirect_to root_url
     else
       flash[:info] = "You need to be signed in to sign out!"
       redirect_to root_url
     end
  end
    
    private
    
  def user_params
     params.require(:user).permit(:name) 
  end
end

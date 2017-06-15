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
      @event = @user.events
  end
    
    private
    
  def user_params
     params.require(:user).permit(:name) 
  end
end

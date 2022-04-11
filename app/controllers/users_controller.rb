class UsersController < ApplicationController
  
  def edit_profile
    @user = User.find(params[:id])
  end
    
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
    redirect_to user_path(current_user.id) if @user != current_user
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    elsif (current_user == edit_user_path)
      render :edit_profile
    else
      render :edit
    end
  end
    
  
  private
  
  def user_params
    params.require(:user).permit(:nickname,:email,:password,:gender,:platform,:playstyle,:weekday,:play_timing)
  end
  
end

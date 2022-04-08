class UsersController < ApplicationController
  
  def user_profile
    @user = User.new(user_params)
    render :new if @user.invalid?
  end
  
  def create
    @user = User.new(uesr_params)
    render :new and return if params[:back] || !@user.save
    redirect_to user_path(@user)
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
    else
      render :edit
    end
  end
    
  
  private
  
  def user_params
    params.require(:user).permit(:nickname,:email,:password,:gender,:platform,:playstyle,:weekday,:play_timing)
  end
  
end

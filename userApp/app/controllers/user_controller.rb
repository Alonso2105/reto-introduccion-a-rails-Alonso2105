class UserController < ApplicationController

  def index

    @user_list = User.all
  
  end	

  def new
  end

  def create

    @user = User.new(user_param)

    if @user.save
      redirect_to users_path, notice:"Usuario guardado"
    else
      render new
    end

  end

  def destroy

    @user = user_find

    if @user.destroy
      redirect_to users_path, notice:"Usuario Eliminado"
    else
      redirect_to users_path, notice:"Error" 
    end

  end

  private

  def user_param
    params.permit(:username, :password)
  end

  def user_find
  @user = User.find(params[:id])
  end

  

end
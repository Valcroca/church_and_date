class HomeController < ApplicationController


  def index
    @user = current_user
  end

  def new
    
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
       redirect_to home_path
    else
      render :edit
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :age, :gender, :interested_in_male, :interested_in_female)
  end

end

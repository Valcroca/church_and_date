class ProfilesController < ApplicationController

  def index
    @user = current_user
    @profile = @user.profile
  end

  def show
    @user = current_user
    @profile = @user.profile
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update(profile_params)
      redirect_to user_profile_path(current_user.id, @profile)
    else
      render :edit
    end
  end

  def new
    @user = current_user
    @profile = Profile.new
  end

  def create
    @profile = Profile.find_by(user_id: params[:user_id])
    if @profile.update(profile_params)
      redirect_to user_profile_path(current_user.id, @profile)
    else
      render :new
    end
  end

  def destroy
    @profile = current_user.profile
    if @profile.destroy
      redirect_to user_path
    else
      redirect_to user_profile_path(@profile)
    end
  end

  private

  def profile_params
    
    params.require(:profile).permit(:name, :gender, :age, :interested_in_males, :interested_in_females, :user_id)
  end
end

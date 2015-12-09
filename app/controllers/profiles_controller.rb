class ProfilesController < ApplicationController

  def index
    @profile = Profile.find(params[:id])
    @user = current_user
  end

  def show
    @profile = Profile.find(params[:id])
    @user = current_user
  end

  def edit
    binding.pry
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
    @profile = Profile.new
  end

  def create

    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to user_profile_path(current_user.id, @profile)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def profile_params
    
    params.require(:profile).permit(:name, :gender, :age, :interested_in_males, :interested_in_females, :user_id)
  end
end
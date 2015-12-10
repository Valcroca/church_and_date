class InterestsController < ApplicationController

  def index
    @profile = current_user.profile
    @interests = Interest.all
  end

  def show
    @profile = Profile.find(params[:id])
    # @interest = @profile.profile_interests(@profile.id)
    @interest = Interest.find(params[:id])
  end

  def new
    # maybe add user
    @interest = Interest.new

  end

  def create
    @interest = Interest.find_by(user_id: params[:user_id])
    if @interest.save
      redirect_to profile_path
    else
      render :new
    end
  end


  def edit
    @profile = Profile.find(params[:id])
    @interest = @profile.interests(:id)
    @interest.update(interest_params)

  end

  def update
  end

  private

  def interest_params
    params.require(:interest).permit(:description, :profile_id)
  end





end

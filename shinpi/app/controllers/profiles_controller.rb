class ProfilesController < ApplicationController
before_action :authenticate_user!

  def new
    @user = current_user
    @profile = Profile.new
  end

  def index
    @user = User.find_by(id: params[:user_id])
    @profile = @user.profile
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @profile = @user.profile
  end


  def create
    if !current_user.profile
    @user = current_user
    @profile = Profile.new
    @user.profile = @profile

     params[:profile].each do |t|
      @profile[t[0]] = t[1]
    @profile.save
  end

    redirect_to root_path
  else
    redirect_to new_user_profile_path(@user,@profile)
  end
end


  def edit
    @user = current_user
    @profile = Profile.where(user_id: @user.id)[0]
  end

  def update
    @user = current_user
    @profile = Profile.where(user_id: @user.id)[0]
     params[:profile].each do |t|
      @profile[t[0]] = t[1]
      @profile.save
    end
      if @profile.save
    redirect_to root_path
  else
    redirect_to root_path
  end
end





  private

  def profile_params
    params.require(:profile).permit(:bio,:experience_in_industry,:industry,:linkedin,:github,:seeking_alpha,:website)
  end

end

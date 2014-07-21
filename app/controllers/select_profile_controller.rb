class SelectProfileController < ApplicationController
  def index
    @profiles = Profile.where(user: current_user).to_a
  end

  def activate
    @profile = Profile.find(params[:id])

    set_current_profile(@profile)
    puts "Set profile to #{current_profile}"
    redirect_to profile_path(@profile)
  end
end

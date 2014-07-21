class ApplicationController < ActionController::Base
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "Access denied."
    redirect_to (request.referrer || root_path)
  end

  helper_method :current_user
  helper_method :current_profile
  helper_method :user_signed_in?
  helper_method :correct_user?



  def incarnate!
    return :redirecting if profile_user! == :redirecting
    current_profile.incarnate!
  end

  def profile_user!
    return :redirecting if authenticate_user! == :redirecting

    if !current_profile
      redirect_to '/select_profile', :alert => 'You need to select a profile.'
      return :redirecting
    end
  end

  private

    def current_profile
      begin
        @current_profile ||= Profile.find(session[:profile_id]) if session[:profile_id]
        @current_profile ||= current_user.last_profile
        session[:profile_id] = @current_profile.id if @current_profile && !session[:profile_id]
        @current_profile
      rescue Exception => e
        nil
      end      
    end

    def set_current_profile(profile)
      session[:profile_id] = profile.id
      @current_profile = profile
      current_user.last_profile = profile
      current_user.save
      
    end

    def current_user
      begin
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      rescue Exception => e
        nil
      end
    end

    def user_signed_in?
      return true if current_user
    end

    def correct_user?
      @user = User.find(params[:id])
      unless current_user == @user
        redirect_to root_url, :alert => "Access denied."
      end
    end

    def authenticate_user!
      if !current_user
        redirect_to root_url, :alert => 'You need to sign in for access to this page.'
        return :redirecting
      end
    end
end

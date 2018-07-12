class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def authenticate_admin
    if !current_user.admin?
      flash[alert]="Page doesn't exist"
      redirect_to root_path
    end
  end
  
end

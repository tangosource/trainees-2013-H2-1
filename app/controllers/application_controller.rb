class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :load_general_vars, if: :user_signed_in? 
  
  protect_from_forgery with: :exception
  
  private

  def load_general_vars
    @project_count = Project.where(approved: [nil,false]).count
    @is_admin = User.find(current_user.id).admin
  end
end

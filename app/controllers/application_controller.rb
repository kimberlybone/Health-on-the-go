class ApplicationController < ActionController::Base
  before_action :set_up_user

  private

  def set_up_user
    @notification = flash["notification"]
    @errors = flash["errors"]
    if (session[:user_id])
      @logged_in_user = User.find(session[:user_id])
    end
  end

end

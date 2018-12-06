class ApplicationController < ActionController::Base
    def current_ability
        @current_ability ||= Ability.new(current_admin_user)
      end
    
    rescue_from CanCan::AccessDenied do | exception |
        redirect_to root_url, alert: exception.message
      end

end

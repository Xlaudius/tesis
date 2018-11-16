class ApplicationController < ActionController::Base
    check_authorization unless: :devise_controller?
end

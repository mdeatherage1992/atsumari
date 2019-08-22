class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  devise_parameter_sanitizer.permit(:ac, keys: [:name])
end


def index
  o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
  @string = (0...50).map { o[rand(o.length)] }.join
end

end

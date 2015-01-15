class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  include Allinone::Core
  act_as_allinone

  def site_not_found_handler
    render :text => 'Custom Site not Found'
  end
end

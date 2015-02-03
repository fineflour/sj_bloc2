class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  config.api_only = false 
  protect_from_forgery with: :exception
  include ActionController::MimeResponds       
  include ActionController::Cookies
  ActionDispatch::Session::CookieStore
  ActionDispatch::Flash
#  ActionDispatch::BestStandardsSupport
end

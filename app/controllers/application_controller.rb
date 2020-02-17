class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login
end

def not_authenticated
    redirect_to login_path, warning: 'ログインしてください'
end
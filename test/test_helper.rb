ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all

  def is_logged_in?
    !session[:user_id].nil?
  end
end

require_relative "../test_helper"
require 'sinatra'
require 'capybara'
require_relative "../../lib/app"

Capybara.app = UncubedApp

class FeatureTest < Minitest::Test
  include Capybara::DSL

  # def setup
  #   @s = new_session
  # end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
    # @s.driver.browser.quit
    # File.delete(File.expand_path("~/Dropbox/Projects/Turing/clonewars_uncubed/test_database.db"))
  end
end

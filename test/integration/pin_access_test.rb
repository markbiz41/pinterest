require 'test_helper'
include Warden::Test::Helpers

class PinAccessTest < ActionDispatch::IntegrationTest

  test 'user shouldnt access someone elses pins' do
    login_as users(:one), scope: :user

    pin = pins(:three)
    get "/pins/#{pin.id}"
    follow_redirect!
    assert_equal flash[:notice], 'Not Authorized!'
  end

  test 'user shouldnt access a pin when not logged in' do
    pin = pins(:three)
    get "/pins/#{pin.id}"
    follow_redirect!
    follow_redirect!
    assert_equal path, '/users/sign_in'
  end
end

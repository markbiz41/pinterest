require 'test_helper'
include Warden::Test::Helpers

class AdminTest < ActionDispatch::IntegrationTest

  test 'user shouldnt access to admin page' do
    login_as users(:one), scope: :user
    get '/admin/'
    follow_redirect!
    assert_equal flash[:notice], 'Not Authorized! Only Admins Can Access.'
  end


    test 'admin should access to admin page' do
      login_as users(:admin), scope: :user
      get '/admin/'
      assert_select 'title', 'Dashboard | Pinterest'
    end

end

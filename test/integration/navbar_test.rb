require 'test_helper'
include Warden::Test::Helpers

class NavbarTest < ActionDispatch::IntegrationTest

  test 'should have link to my pins' do
    login_as users(:one), scope: :user
    get '/'
  end

end

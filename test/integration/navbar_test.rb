require 'test_helper'
include Warden::Test::Helpers

class NavbarTest < ActionDispatch::IntegrationTest

  test 'should have link to home' do
    login_as users(:one), scope: :user
    get '/'
    assert_select "#navbar" do
      assert_select "li a", "Home"
    end
  end


  test 'should have link to my pins' do
    login_as users(:one), scope: :user
    get '/'
    assert_select "#navbar" do
      assert_select "li a", "My Pins"
    end
  end

  test 'should have link to my board' do
    login_as users(:one), scope: :user
    get '/'
    assert_select "#navbar" do
      assert_select "li a", "My Boards"
    end
  end


end

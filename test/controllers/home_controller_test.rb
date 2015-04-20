require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should assign pins to @pins variable" do
    sign_in users(:one)
    get :index
    assert_response :success
    assert_equal(assigns(:pins)[0], Pin.last)
  end

  test 'search should search by title' do
    sign_in users(:one)
    post :search, query: "Awesome"

    assert_equal(assigns(:pins)[0], pins(:one))
  end

  test 'search should search by description' do
    sign_in users(:one)
    post :search, query: "random"

    assert_equal(assigns(:pins)[0], pins(:one))
  end

end

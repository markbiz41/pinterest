require 'test_helper'

class PinsControllerTest < ActionController::TestCase
  setup do
    @pin = pins(:one)
  end

  test "should show pin" do
    get :show, id: @pin
    assert_template :show
  end

end

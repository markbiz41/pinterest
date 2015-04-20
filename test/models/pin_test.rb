require 'test_helper'

class PinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not be saved without title' do
    pin = Pin.new(description: 'desc')

    assert_not pin.save
  end


  test 'should not be saved without description' do
    pin = Pin.new(title: 'title')

    assert_not pin.save
  end
end

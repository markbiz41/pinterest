require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not be saved without name' do
    board = Board.new

    assert_not board.save
  end


end

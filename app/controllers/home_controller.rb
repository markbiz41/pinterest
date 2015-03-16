class HomeController < ApplicationController
  def index
    @pins = Pin.page params[:page]
  end

  def my_pins
    @pins = current_user.pins.page params[:page]
  end

  def my_boards
    @boards = current_user.boards
  end

  def search
    @pins = Pin.where("description LIKE ?", "%#{params[:query]}%")
  end

end
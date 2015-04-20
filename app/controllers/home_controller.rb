class HomeController < ApplicationController
  def index
    @pins = Pin.order('created_at DESC').page params[:page]
    #logger.fatal @pins[0].inspect
  end

  def my_pins
    @pins = current_user.pins.page params[:page]
    #binding.pry
  end

  def my_boards
    @boards = current_user.boards
  end

  def search
    @pins = Pin.where("title LIKE ? OR description LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
  end

end

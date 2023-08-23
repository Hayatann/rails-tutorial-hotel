class HotelsController < ApplicationController
  def index
    @q = Hotel.ransack(params[:q], auth_object: nil)
    @hotels = @q.result(distinct: true)
  end

  def show
    @hotel = Hotel.find(params[:id])
    @reviews = @hotel.reviews
  end

  def hotel_params
    params.require(:hotel).permit(:name, :prefecture, :description, :picture)
  end

end

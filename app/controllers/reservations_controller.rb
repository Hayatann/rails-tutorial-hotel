class ReservationsController < ApplicationController
  def index
    @hotel = Hotel.find(params[:hotel_id])
    @reservations = @hotel.reservations
  end

  def show
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = Reservation.find(params[:id])
  end

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = @hotel.reservations.build
  end

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to action: :show, id: @reservation.id
    end
  end

  def reservation_params
    params.require(:reservation).permit(:name, :email, :check_in_date, :check_out_date, :person_count, :hotel_id)
  end
end


class BookingsController < ApplicationController

  def create
    @booking = Booking.new(params_booking)
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.save!
      redirect_to offers_path
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def params_booking
    params.require(:booking).permit(:status)
  end
end

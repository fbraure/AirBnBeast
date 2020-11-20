class BookingsController < ApplicationController
  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    @booking.user = current_user
    @booking.status = 1
    if @booking.save
      redirect_to mine_offers_path
    else
      render "offers/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:target)
  end
end

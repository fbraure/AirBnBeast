class BookingsController < ApplicationController
  def create
    byebug
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    @booking.user = current_user
    @booking.status = 1
    if @booking.save!
      redirect_to offers_path
    else
      render "offers/:id/"
    end
  end
end

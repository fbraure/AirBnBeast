class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @offer = Offer.find(params[:offer_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `offer_id` to associate review with corresponding offer
    @offer = Offer.find(params[:offer_id])
    @review.offer = @offer
    if @review.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to offer_path(@review.offer)
  end

  private

  def review_params
    params.require(:review).permit(:description)
  end
end

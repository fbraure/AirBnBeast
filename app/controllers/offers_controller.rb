class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
    @seller = "#{@offer.user.first_name} #{@offer.user.last_name}"
  end

  def search

  end
end

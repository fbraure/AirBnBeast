class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def search

  end
end

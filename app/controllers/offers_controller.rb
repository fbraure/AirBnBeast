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

  def mine
    # Trouver les offres que le vendeur a cree pour les afficher
    # @offers = Offer.where(user: current_user)
    @user = current_user
    @offers = @user.offers
    # Trouver les offres que user a achete pour les afficher
    # @bookedoffers = @user.bookedoffers
  end
end

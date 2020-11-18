class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def search

  end

  def mine
    # Trouver les offres que le vendeur a cree pour les afficher
    @offers = Offer.where(user: current_user)
    @user = current_user
    # Trouver les offres que user a achete pour les afficher
  end
end

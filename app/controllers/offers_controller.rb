class OffersController < ApplicationController

  def index
      @offers = Offer.all
  end

  def search
    searched = params[:search]
    #@offers = Offer.where('@offers.title LIKE ?', "%searched%")
    #1h de tentative infructueuse d'amelioration
    #A voir les recherches vides, les no matchs, et les recherches approximatives
    @offers = Offer.find_by(title: searched)
  end

  def mine
    # Trouver les offres que le vendeur a cree pour les afficher
    @offers = Offer.where(user: current_user)
    @user = current_user
    # Trouver les offres que user a achete pour les afficher
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :date, :price)
  end
end

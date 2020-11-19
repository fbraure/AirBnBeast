class OffersController < ApplicationController

  def index
    if params[:search] != nil && params[:search] != ""
      @offers = Offer.search_by_title_and_decription(params[:search])
      # sql_query = " \
      #   offers.title @@ :search \
      #   OR offers.description @@ :search \
      #   "
      # @offers = Offer.where(sql_query, search: '%#{params[:search]}%').reverse
      #a creuser ILIKE pour search
      #a voir la GEM PG Search en remplacement
    else
      @offers = Offer.all.reverse
    end
  end

  def show
    @offer = Offer.find(params[:id])
    @seller = "#{@offer.user.first_name} #{@offer.user.last_name}"
  end

  def mine
    # Trouver les offres que le vendeur a cree pour les afficher
    @offers = Offer.where(user: current_user).reverse
    @user = current_user
    # Trouver les offres que user a achete pour les afficher
  end

  private

  # def offer_params
  #   params.require(:offer).permit(:title, :date, :price)
  # end
end

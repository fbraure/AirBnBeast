class OffersController < ApplicationController

  def index
    if params[:search] != nil && params[:search] != ""
      @offers = Offer.where("title ILIKE ?", "%#{params[:search]}%").reverse
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
    @user = current_user
    @offers = @user.offers.reverse
    # Trouver les offres que user a achete pour les afficher
    @booked_offers = @user.booked_offers.reverse
  end

  private

  # def offer_params
  #   params.require(:offer).permit(:title, :date, :price)
  # end
end

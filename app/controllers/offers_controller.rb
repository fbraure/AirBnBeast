class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update]

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
    @seller = "#{@offer.user.first_name} #{@offer.user.last_name}"
  end

  def mine
    # Trouver les offres que le vendeur a cree pour les afficher
    @user = current_user
    @offers = @user.offers.reverse
    # Trouver les offres que user a achete pour les afficher
    # @booked_offers = @user.booked_offers
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save!
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to mine_offers_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :date, :price, :photo_url)
  end
end

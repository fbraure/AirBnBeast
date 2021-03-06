class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :unbook, :destroy]

  def index
    if params[:search] != nil && params[:search] != ""
      @offers = Offer.search_by_title_and_decription(params[:search]).reject(&:is_past?).reject(&:is_booked?)
      # sql_query = " \
      #   offers.title @@ :search \
      #   OR offers.description @@ :search \
      #   "
      # @offers = Offer.where(sql_query, search: '%#{params[:search]}%').reverse
      #a creuser ILIKE pour search
      #a voir la GEM PG Search en remplacement
    else
      @offers = Offer.all.reject(&:is_past?).reject(&:is_booked?).reverse
    end
  end

  def show
    @seller = "#{@offer.user.first_name} #{@offer.user.last_name}"
    @booking = Booking.new
  end

  def mine
    # Trouver les offres que le vendeur a cree pour les afficher
    @user = current_user

    @offer_type = params[:service] || "bought"
    case @offer_type
    when "bought"
      @offers = @user.active_booked_offers.reject(&:is_past?).sort{ |a, b| a.date <=> b.date }
    when "used"
      @offers = @user.active_booked_offers.select(&:is_past?).sort{ |a, b| a.date <=> b.date }
    when "cancelled"
      @offers = @user.cancelled_booked_offers.sort{ |a, b| a.date <=> b.date }
    when "proposed"
      @offers = @user.offers.reverse
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save!
      redirect_to mine_offers_path(service: "proposed")
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to mine_offers_path(service: "proposed")
  end

  def unbook
    # Pour unbooker, il suffit de sortir les status = 1
    @bookings = @offer.bookings
    @bookings.each do |booking|
       booking.status = 0
       booking.save
    end
    redirect_to mine_offers_path(service: "bought")
  end

  def destroy
      @offer.destroy
      redirect_to mine_offers_path(service: params[:service])
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :date, :price, :photo_url)
  end
end

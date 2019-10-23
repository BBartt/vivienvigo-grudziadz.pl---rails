class Admin::OfferTitlesController < Admin::BaseController
  before_action :set_admin_offer_title, only: [:edit, :update, :destroy]

  def index
    @admin_offer_titles = Admin::OfferTitle.all
  end

  def new
    @admin_offer_title = Admin::OfferTitle.new
  end

  def edit
  end

  def create
    @admin_offer_title = Admin::OfferTitle.new(admin_offer_title_params)

    respond_to do |format|
      if @admin_offer_title.save
        format.html { redirect_to admin_offer_titles_path, notice: 'Tytuł sekcji oferta został utworzony' }
        format.json { render :show, status: :created, location: @admin_offer_title }
      else
        format.html { render :new }
        format.json { render json: @admin_offer_title.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_offer_title.update(admin_offer_title_params)
        format.html { redirect_to admin_offer_titles_path, notice: 'Tytuł sekcji oferta został edytowany' }
        format.json { render :show, status: :ok, location: @admin_offer_title }
      else
        format.html { render :edit }
        format.json { render json: @admin_offer_title.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_offer_title.destroy
    respond_to do |format|
      format.html { redirect_to admin_offer_titles_url, notice: 'Tytuł sekcji oferta został usunięty' }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_offer_title
      @admin_offer_title = Admin::OfferTitle.find(params[:id])
    end
    def admin_offer_title_params
      params.require(:admin_offer_title).permit(:title)
    end
end

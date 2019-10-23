class Admin::OfferImagesController < Admin::BaseController
  def index
    @admin_offer_images = Admin::OfferImage.all
  end

  def new
    @admin_offer_image = Admin::OfferImage.new
  end

  def create
    @admin_offer_image = Admin::OfferImage.new(admin_offer_image_params)

    respond_to do |format|
      if @admin_offer_image.save
        format.html { redirect_to admin_offer_images_path, notice: 'Zdjęcia zostały dodane' }
        format.json { render :show, status: :created, location: @admin_offer_image }
      else
        format.html { render :new }
        format.json { render json: @admin_offer_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_offer_image = Admin::OfferImage.find(params[:id])
    @admin_offer_image.destroy
    respond_to do |format|
      format.html { redirect_to admin_offer_images_url, notice: 'Zdjęcia zostały usunięte' }
      format.json { head :no_content }
    end
  end

  private
    def admin_offer_image_params
      params.require(:admin_offer_image).permit(:title, images: [])
    end
end

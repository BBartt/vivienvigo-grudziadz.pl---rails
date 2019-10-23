class Admin::OrderImagesController < Admin::BaseController
  def index
    @admin_order_images = Admin::OrderImage.all
  end

  def new
    @admin_order_image = Admin::OrderImage.new
  end

  def create
    @admin_order_image = Admin::OrderImage.new(admin_order_image_params)

    respond_to do |format|
      if @admin_order_image.save
        format.html { redirect_to admin_order_images_path, notice: 'Zdjęcia zostały dodane' }
        format.json { render :show, status: :created, location: @admin_order_image }
      else
        format.html { render :new }
        format.json { render json: @admin_order_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_order_image = Admin::OrderImage.find(params[:id])
    @admin_order_image.destroy
    respond_to do |format|
      format.html { redirect_to admin_order_images_url, notice: 'Zdjęcia zostały usunięte' }
      format.json { head :no_content }
    end
  end

  private
    def admin_order_image_params
      params.require(:admin_order_image).permit(:title, images: [])
    end
end

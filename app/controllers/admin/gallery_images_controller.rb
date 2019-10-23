class Admin::GalleryImagesController < Admin::BaseController
  def index
    @admin_gallery_images = Admin::GalleryImage.all
  end

  def new
    @admin_gallery_image = Admin::GalleryImage.new
  end

  def create
    @admin_gallery_image = Admin::GalleryImage.new(admin_gallery_image_params)

    respond_to do |format|
      if @admin_gallery_image.save
        format.html { redirect_to admin_gallery_images_path, notice: 'Zdjęcia zostały dodane' }
        format.json { render :show, status: :created, location: @admin_gallery_image }
      else
        format.html { render :new }
        format.json { render json: @admin_gallery_image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_gallery_image = Admin::GalleryImage.find(params[:id])
    @admin_gallery_image.destroy
    respond_to do |format|
      format.html { redirect_to admin_gallery_images_url, notice: 'Zdjęcia zostały usunięte' }
      format.json { head :no_content }
    end
  end

  private
    def admin_gallery_image_params
      params.require(:admin_gallery_image).permit(:title, images: [])
    end
end

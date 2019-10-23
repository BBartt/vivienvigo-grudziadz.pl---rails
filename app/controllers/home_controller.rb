class HomeController < ApplicationController
  def index
    @admin_offer_images = Admin::OfferImage.all
    @admin_offer_titles = Admin::OfferTitle.all
    @admin_gallery_images = Admin::GalleryImage.all
    @admin_order_images = Admin::OrderImage.all
    @admin_events = Admin::Event.all
  end
end

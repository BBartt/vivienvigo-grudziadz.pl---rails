class Admin::GalleryImage < ApplicationRecord
  has_many_attached :images
end

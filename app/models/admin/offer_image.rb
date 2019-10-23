class Admin::OfferImage < ApplicationRecord
  has_many_attached :images
end

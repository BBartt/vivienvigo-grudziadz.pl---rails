class Admin::OrderImage < ApplicationRecord
  has_many_attached :images
end

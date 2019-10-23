class CreateAdminGalleryImages < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_gallery_images do |t|
      t.string :title

      t.timestamps
    end
  end
end

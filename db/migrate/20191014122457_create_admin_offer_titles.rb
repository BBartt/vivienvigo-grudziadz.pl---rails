class CreateAdminOfferTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_offer_titles do |t|
      t.string :title

      t.timestamps
    end
  end
end

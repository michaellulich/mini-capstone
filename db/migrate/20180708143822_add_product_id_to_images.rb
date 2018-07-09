class AddProductIdToImages < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :img_id, :product_id
  end
end

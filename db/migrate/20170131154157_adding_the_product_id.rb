class AddingTheProductId < ActiveRecord::Migration[5.0]
  
  def change
      change_column :images, :product_id, :string
  end
end

class ChangeTheSpellingOfQuantity < ActiveRecord::Migration[5.0]
  def change
    remove_column :carted_products, :quantiy, :integer
  end
end

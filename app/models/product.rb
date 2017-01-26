class Product < ApplicationRecord

  def product_list
    name.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
   end
end

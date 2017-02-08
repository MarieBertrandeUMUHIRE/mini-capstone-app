class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, :through :carted_products

  def product_list
    name.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
   end
  def self.discounted_products
    Product.where("price < ?", 50)
  end

  def tax
    return price * 0.09
    end
end


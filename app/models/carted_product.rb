class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product, optional: true
  validates :quantity, numericality: {greater_than: 0}

def friendly_updated_at
    updated_at.strftime("%A, %d %b %Y %l:%M %p")
  end
end
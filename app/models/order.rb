class Order < ApplicationRecord
  belongs_to :product, optional:true
  belongs_to :users, optional:true
  def tax
    return price * 0.09
  end
end

class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validates :password_digest, length: { in: 6..20 }
  validates :name, :login, :email, presence: true
  validates :email, uniqueness: true
end

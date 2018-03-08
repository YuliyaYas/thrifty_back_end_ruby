class User < ApplicationRecord
  has_secure_password
  has_many :images
  validates :username, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true
end

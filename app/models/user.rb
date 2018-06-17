class User < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :karui, presence: true
  validates :password, length: {minimum:6}
  has_secure_password
end

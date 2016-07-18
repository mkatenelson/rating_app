class User < ActiveRecord::Base

  BCrypt::Engine.cost = 12

  # name & password_digest fields must exist
  validates :name, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_secure_password

end

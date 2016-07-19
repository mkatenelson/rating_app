class User < ActiveRecord::Base

  has_many :places
  has_many :reviews, dependent: :destroy #if a user is deleted, so are their associated reviews

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

end

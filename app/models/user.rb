class User < ActiveRecord::Base

  has_many :places
  has_many :reviews, dependent: :destroy

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

end

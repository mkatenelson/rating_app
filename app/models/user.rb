class User < ActiveRecord::Base

  has_many :places

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

end

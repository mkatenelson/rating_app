class User < ActiveRecord::Base
  # name & password_digest fields must exist
  validates :name, :password_digest, presence: true

  # class method `::confirm`
  def self.confirm(name_param, password_param)
    # add a unique name validator later
    user = User.find_by_name(name_param)
    user.authenticate(password_param)
  end

  has_secure_password

end

class User < ActiveRecord::Base

  has_many :assignments
  belongs_to :classroom

  has_secure_password

  def name
    "#{first_name} #{last_name}"
  end

end

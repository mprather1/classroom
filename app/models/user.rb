class User < ActiveRecord::Base

  has_many :assignments
  has_and_belongs_to_many :classrooms

  has_secure_password

  def name
    "#{first_name} #{last_name}"
  end

end

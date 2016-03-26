class User < ActiveRecord::Base

  belongs_to :table

  validates :username, :email, presence: true, uniqueness: true
  validates :employee_type, presence: true
  has_secure_password

end

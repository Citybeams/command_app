class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true,  #validates that email is present and unique
  uniqueness: true,
  format: {
    with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  }


  before_save :downcase_email



  def downcase_email   #method to downcase an email if user user capitals
    self.email = email.downcase
  end
end

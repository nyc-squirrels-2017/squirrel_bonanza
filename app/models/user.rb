class User < ActiveRecord::Base
  # Remember to create a migration!

  validates :username, :email, presence: true
  validates :password, length: {minimum:  6}

  validate :custom


  # def custom
  #   # binding.pry
  #   if self.username.length == 0
  #     errors.add('username','can not blank ')
  #   end
  # end



  has_secure_password

  # def password
  #   # binding.pry
  #   @password = BCrypt::Password.new(self.password_digest)
  # end
  #
  # def password=(value)
  #   # binding.pry
  #   self.password_digest = BCrypt::Password.create(value)
  #   @password = value
  # end

end

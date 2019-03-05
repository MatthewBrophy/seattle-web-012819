class User < ApplicationRecord
  has_secure_password

  validates :username, {presence: true, uniqueness: true}

  # def password=(password)
  #   byebug
  #   encrypted_hash = Digest::SHA256.base64digest(password)
  #   password_digest=(encrypted_hash)
  #   self.save
  # end
  #
  # def authenticated_password(password)
  #   self.password_digest == Digest::SHA256.base64digest(password)
  # end
end

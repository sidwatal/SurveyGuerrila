class User < ActiveRecord::Base
  include BCrypt

  has_many :surveys
  has_many :surveys_users
  has_many :responses

  validates :name, :email, :password_hash, presence: true
  validates :name, length: { maximum: 32 }
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ }

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(plaintext_password)
    self.password == plaintext_password
  end

end

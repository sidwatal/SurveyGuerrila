class User < ActiveRecord::Base
  has_many :surveys
  has_many :surveys_users
  has_many :responses

  validates :name, :email, :password_hash, presence: true
  validates :name, length: { maximum: 32 }
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ }
end

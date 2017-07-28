class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password, presence: true, length: {minimum: 6}, confirmation: true
  validates :linkedin, uniqueness: true, presence: true
  validates :password_confirmation, presence: true

  has_secure_password

end

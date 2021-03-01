class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :videos, -> { order(updated_at: :desc) }, dependent: :destroy
end

class User < ApplicationRecord
  validates :display_name, :email, presence: true
  validates :display_name, :email, uniqueness: true
  has_secure_password

  has_many :equipment_sets, dependent: :destroy
end

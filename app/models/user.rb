class User < ApplicationRecord
  validates :display_name, :email, presence: true
  validates :display_name, :email, uniqueness: true
  validates :password_digest, length: { in: 8..20 }

  has_many :equipment_sets
end

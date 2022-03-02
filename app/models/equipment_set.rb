class EquipmentSet < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :user
  has_many :equipment_set_items
end

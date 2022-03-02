class EquipmentSetItem < ApplicationRecord
  validates :slot, presence: true
  belongs_to :equipment_set
end

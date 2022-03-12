class EquipmentSet < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :oldschooljs_monster_id, presence: true

  belongs_to :user
  has_many :equipment_set_items, dependent: :destroy
end

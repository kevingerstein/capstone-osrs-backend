class EquipmentSetSerializer < ActiveModel::Serializer
  attributes :id, :name, :oldschooljs_monster_id
  has_many :equipment_set_items
end

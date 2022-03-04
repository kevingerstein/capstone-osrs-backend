User.create!([
  {email: "kevin@test.com", display_name: "kevin", password_digest: "$2a$12$WCFqrYoVMgGSzIRAchIWduXt9DnrOHdKSE5rwPm1B12dBdUjOcCSi", profile_picture: nil}
])
EquipmentSet.create!([
  {name: "Magic Dragon Set", user_id: 1, oldschooljs_monster_id: 12915},
  {name: "Revenant Ranged Set", user_id: 1, oldschooljs_monster_id: 12915},
  {name: "Sword Dragon Melee Set", user_id: 1, oldschooljs_monster_id: 777}
])
EquipmentSetItem.create!([
  {oldschooljs_item_id: 4151, equipment_set_id: 1, slot: "2h"},
  {oldschooljs_item_id: 2, equipment_set_id: 1, slot: "helm"},
  {oldschooljs_item_id: 3, equipment_set_id: 1, slot: "chest"},
  {oldschooljs_item_id: 4, equipment_set_id: 1, slot: "legs"},
  {oldschooljs_item_id: 5, equipment_set_id: 1, slot: "ring"},
  {oldschooljs_item_id: 4151, equipment_set_id: 2, slot: "2h"},
  {oldschooljs_item_id: 2, equipment_set_id: 2, slot: "head"},
  {oldschooljs_item_id: 3, equipment_set_id: 2, slot: "body"},
  {oldschooljs_item_id: 4, equipment_set_id: 2, slot: "legs"},
  {oldschooljs_item_id: 4, equipment_set_id: 2, slot: "feet"},
  {oldschooljs_item_id: 4, equipment_set_id: 2, slot: "hands"},
  {oldschooljs_item_id: 4, equipment_set_id: 2, slot: "cape"},
  {oldschooljs_item_id: 4, equipment_set_id: 2, slot: "ammo"},
  {oldschooljs_item_id: 4, equipment_set_id: 2, slot: "neck"},
  {oldschooljs_item_id: 5, equipment_set_id: 2, slot: "ring"},
  {oldschooljs_item_id: 2, equipment_set_id: 3, slot: "helm"},
  {oldschooljs_item_id: 3, equipment_set_id: 3, slot: "chest"},
  {oldschooljs_item_id: 4, equipment_set_id: 3, slot: "legs"},
  {oldschooljs_item_id: 5, equipment_set_id: 3, slot: "ring"}
])



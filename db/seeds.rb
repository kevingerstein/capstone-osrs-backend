User.create!([
  {email: "kevin@test.com", display_name: "kevin", password_digest: "$2a$12$z4HaxX0s9yFiFfiUSrReX..k6BGvnBFyxjsfpXhm/NaOhbtyfRXwG", profile_picture: nil}
])
EquipmentSet.create!([
  {name: "test set", user_id: 1, oldschooljs_monster_id: 12915}
])
EquipmentSetItem.create!([
  {oldschooljs_item_id: 4151, equipment_set_id: 1, slot: "2h"}
])

class CreateEquipmentSets < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment_sets do |t|
      t.string :name
      t.integer :user_id
      t.integer :oldschooljs_monster_id

      t.timestamps
    end
  end
end

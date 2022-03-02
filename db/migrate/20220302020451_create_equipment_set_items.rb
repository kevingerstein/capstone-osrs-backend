class CreateEquipmentSetItems < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment_set_items do |t|
      t.integer :oldschooljs_item_id
      t.integer :equipment_set_id
      t.string :slot

      t.timestamps
    end
  end
end

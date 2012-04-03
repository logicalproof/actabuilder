class CreateWeaponCards < ActiveRecord::Migration
  def change
    create_table :weapon_cards do |t|
      t.integer :ship_id
      t.integer :weapon_id
      t.integer :attack_dice
      t.string :arc

      t.timestamps
    end
  end
end

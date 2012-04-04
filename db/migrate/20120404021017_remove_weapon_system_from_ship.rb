class RemoveWeaponSystemFromShip < ActiveRecord::Migration
  def up
    remove_column :ships, :weapon_system
  end

  def down
    add_column :ships, :weapon_system, integer
  end
end

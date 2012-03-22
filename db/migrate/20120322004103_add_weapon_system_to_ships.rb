class AddWeaponSystemToShips < ActiveRecord::Migration
  def change
    add_column :ships, :weapon_system, :integer, default: 0
  end
end

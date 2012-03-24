class AddingAllTraitsToShipsDb < ActiveRecord::Migration
  def up
    change_table :ships do |t|
      t.boolean :agile, :default => false
      t.integer :anti_drone, :default => 0
      t.boolean :armoured, :default => false
      t.boolean :cloak, :default => false
      t.integer :command, :default => 0
      t.boolean :enhanced_bridge, :default => false
      t.boolean :fast, :default => false
      t.boolean :immobile, :default => false
      t.integer :labs, :default => 0
      t.boolean :lumbering, :default => false
      t.integer :probes, :default => 0
      t.boolean :quick_launch, :default => false
      t.boolean :scout, :default => false
      t.boolean :slow, :default => false
      t.integer :stealth, :default => 0
      t.integer :tractor_beam, :default => 0
      t.integer :transporter, :default => 0
    end
  end
  
  def down
    remove_column :ships, :agile
    remove_column :ships, :anti_drone
    remove_column :ships, :armoured
    remove_column :ships, :cloak
    remove_column :ships, :command
    remove_column :ships, :enhanced_bridge
    remove_column :ships, :fast
    remove_column :ships, :immobile
    remove_column :ships, :labs
    remove_column :ships, :lumbering
    remove_column :ships, :probes
    remove_column :ships, :quick_launch
    remove_column :ships, :scout
    remove_column :ships, :slow
    remove_column :ships, :stealth
    remove_column :ships, :tractor_beam
    remove_column :ships, :transporter
  end
end

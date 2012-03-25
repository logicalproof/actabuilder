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
      t.boolean :probes, :default => true
      t.boolean :quick_launch, :default => false
      t.boolean :scout, :default => false
      t.boolean :slow, :default => false
      t.integer :stealth, :default => 0
      t.integer :tractor_beam, :default => 0
      t.integer :transporter, :default => 0
    end
  end
  
  def down
    change_table :ships do |t|
    t.remove_column :agile
    t.remove_column :anti_drone
    t.remove_column :armoured
    t.remove_column :cloak
    t.remove_column :command
    t.remove_column :enhanced_bridge
    t.remove_column :fast
    t.remove_column :immobile
    t.remove_column :labs
    t.remove_column :lumbering
    t.remove_column :probes
    t.remove_column :quick_launch
    t.remove_column :scout
    t.remove_column :slow
    t.remove_column :stealth
    t.remove_column :tractor_beam
    t.remove_column :transporter
    end
  end
end

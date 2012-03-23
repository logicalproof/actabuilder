class AddingAllTraitsToShipsDb < ActiveRecord::Migration
  def change
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
end

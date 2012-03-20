class AddAllShipAttributes < ActiveRecord::Migration
   def change
    add_column :ships, :turn, :integer
    add_column :ships, :marines, :integer
    add_column :ships, :craft, :string
    add_column :ships, :traits, :string
    add_column :ships, :damage, :integer
    add_column :ships, :cripple_value, :integer
    add_column :ships, :shield, :integer
  end
end

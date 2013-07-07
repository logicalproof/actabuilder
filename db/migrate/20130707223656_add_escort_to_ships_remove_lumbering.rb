class AddEscortToShipsRemoveLumbering < ActiveRecord::Migration
  def change
    add_column :ships, :escort, :boolean, :default => false
    remove_column :ships, :lumbering
  end
end

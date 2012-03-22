class RemoveTraitsFromShips < ActiveRecord::Migration
  def up
    remove_column :ships, :traits
  end

  def down
    add_column :ships, :traits
  end
end

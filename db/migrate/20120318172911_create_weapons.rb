class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :range
      t.string :special

      t.timestamps
    end
  end
end

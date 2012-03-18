class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :cost
      t.string :image_url
      t.string :empire

      t.timestamps
    end
  end
end

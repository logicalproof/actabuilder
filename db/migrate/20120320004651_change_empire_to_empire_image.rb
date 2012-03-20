class ChangeEmpireToEmpireImage < ActiveRecord::Migration
  def change
    rename_column :ships, :empire, :empire_image
  end
end

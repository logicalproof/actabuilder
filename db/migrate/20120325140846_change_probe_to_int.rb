class ChangeProbeToInt < ActiveRecord::Migration
  def up
      change_column :ships, :probes, :boolean, :default => true
  end

  def down
      change_column :ships, :probes, :integer, :default => 0
  end
end

class AdicionCi < ActiveRecord::Migration
  def self.up
    add_column :formularios, :ci, :string, :limit => 20
  end

  def self.down
    remove_column :formularios, :ci
  end
end

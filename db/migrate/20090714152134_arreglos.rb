class Arreglos < ActiveRecord::Migration
  def self.up
    add_column :formularios, :principales_resultados, :string
  end

  def self.down
    remove_column :formularios, :principales_resultados
  end
end

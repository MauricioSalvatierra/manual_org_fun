class AddNombre < ActiveRecord::Migration
  def self.up
    add_column :formularios, :nombre, :string
    add_column :formularios, :apellido, :string
    
  end

  def self.down
    remove_column :formularios, :nombre
    remove_column :formularios, :apellido
  end
end

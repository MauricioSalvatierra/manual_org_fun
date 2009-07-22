class ModificacionDeFormulario < ActiveRecord::Migration
  def self.up
    add_column :formularios, :cargo ,:string
    add_column :formularios, :nivel_jerarquico ,:string
    add_column :formularios, :inmediato_superior ,:string
    add_column :formularios, :areas_dependientes ,:string
    add_column :formularios, :tipo_area ,:string
    
    
  end

  def self.down
    remove_column :formularios, :cargo 
    remove_column :formularios, :nivel_jerarquico 
    remove_column :formularios, :inmediato_superior 
    remove_column :formularios, :areas_dependientes 
    remove_column :formularios, :tipo_area 
  end
end

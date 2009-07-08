class CreateFormularios < ActiveRecord::Migration
  def self.up
    create_table :formularios do |t|
      t.integer :area_id
      t.integer :usuario_id
      t.text :objectivo_area_funcional
      t.text :descripcion_funcion_principal
      t.text :descripcion_funciones_especificas
      t.text :relaciones_coordinacion_interna
      t.text :relacionamiento_interinstitucional
      t.date :fecha_aprovacion
      t.date :fecha_actualizacion

      t.timestamps
    end
  end

  def self.down
    drop_table :formularios
  end
end

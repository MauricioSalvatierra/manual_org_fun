class CreateNiveles < ActiveRecord::Migration
  def self.up
    create_table :niveles do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :niveles
  end
end

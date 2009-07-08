class CreateAreas < ActiveRecord::Migration
  def self.up
    create_table :areas do |t|
      t.integer :parent_id
      t.string :nombre
      t.integer :tipo_id
      t.integer :nivel_id
      t.integer :lft
      t.integer :rgt
      t.boolean :activo

      t.timestamps
    end
  end

  def self.down
    drop_table :areas
  end
end

class CreateTelefonos < ActiveRecord::Migration
  def self.up
    create_table :telefonos do |t|
      t.string :numero
      t.integer :cliente_id
      t.timestamps
    end
  end

  def self.down
    drop_table :telefonos
  end
end

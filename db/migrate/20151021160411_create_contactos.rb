class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :correo
      t.integer :edad

      t.timestamps null: false
    end
  end
end

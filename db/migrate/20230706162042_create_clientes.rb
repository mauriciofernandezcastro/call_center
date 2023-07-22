class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.integer :numero_telefono
      t.string :nombre_cliente
      t.string :email

      t.timestamps
    end
  end
end

class AddClientesToControlAcceso < ActiveRecord::Migration[7.0]
  def change
    add_reference :control_accesos, :clientes, null: false, foreign_key: true
  end
end

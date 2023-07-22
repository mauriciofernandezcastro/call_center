class CreateControlAccesos < ActiveRecord::Migration[7.0]
  def change
    create_table :control_accesos do |t|
      t.string :name
      t.integer :password

      t.timestamps
    end
  end
end

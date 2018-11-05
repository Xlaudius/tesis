class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :contact
      t.integer :number
      t.boolean :available
      t.references :client_type, foreign_key: true

      t.timestamps
    end
  end
end

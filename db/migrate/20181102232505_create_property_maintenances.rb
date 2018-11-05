class CreatePropertyMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :property_maintenances do |t|
      t.references :maintenance, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end

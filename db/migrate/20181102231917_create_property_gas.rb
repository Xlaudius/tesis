class CreatePropertyGas < ActiveRecord::Migration[5.2]
  def change
    create_table :property_gas do |t|
      t.references :property, foreign_key: true
      t.references :gas, foreign_key: true

      t.timestamps
    end
  end
end

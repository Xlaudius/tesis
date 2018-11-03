class CreatePropertyRols < ActiveRecord::Migration[5.2]
  def change
    create_table :property_rols do |t|
      t.integer :block
      t.integer :predial
      t.references :province, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end

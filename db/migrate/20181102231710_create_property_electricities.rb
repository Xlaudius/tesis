class CreatePropertyElectricities < ActiveRecord::Migration[5.2]
  def change
    create_table :property_electricities do |t|
      t.references :electricity, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end

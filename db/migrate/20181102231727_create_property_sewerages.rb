class CreatePropertySewerages < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sewerages do |t|
      t.references :sewerage, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end

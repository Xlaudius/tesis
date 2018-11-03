class CreatePropertyHeatings < ActiveRecord::Migration[5.2]
  def change
    create_table :property_heatings do |t|
      t.references :heating, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end

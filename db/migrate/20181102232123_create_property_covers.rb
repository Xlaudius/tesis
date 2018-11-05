class CreatePropertyCovers < ActiveRecord::Migration[5.2]
  def change
    create_table :property_covers do |t|
      t.text :observations
      t.references :property, foreign_key: true
      t.references :cover, foreign_key: true

      t.timestamps
    end
  end
end

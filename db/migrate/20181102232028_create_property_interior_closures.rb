class CreatePropertyInteriorClosures < ActiveRecord::Migration[5.2]
  def change
    create_table :property_interior_closures do |t|
      t.string :other
      t.references :property, foreign_key: true
      t.references :interior_closure, foreign_key: true

      t.timestamps
    end
  end
end

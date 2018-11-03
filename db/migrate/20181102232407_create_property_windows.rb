class CreatePropertyWindows < ActiveRecord::Migration[5.2]
  def change
    create_table :property_windows do |t|
      t.references :window, foreign_key: true
      t.references :property, foreign_key: true
      t.string :other
      t.boolean :protections

      t.timestamps
    end
  end
end

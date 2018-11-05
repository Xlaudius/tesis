class CreatePropertyPavements < ActiveRecord::Migration[5.2]
  def change
    create_table :property_pavements do |t|
      t.references :pavement, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end

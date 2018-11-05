class CreatePropertySheds < ActiveRecord::Migration[5.2]
  def change
    create_table :property_sheds do |t|
      t.references :shed, foreign_key: true
      t.references :property, foreign_key: true
      t.references :shed_material, foreign_key: true

      t.timestamps
    end
  end
end

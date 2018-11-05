class CreatePropertyEnlarQualities < ActiveRecord::Migration[5.2]
  def change
    create_table :property_enlar_qualities do |t|
      t.references :enlargements_quality, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end

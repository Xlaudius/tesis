class CreatePropertyToiletArtifacts < ActiveRecord::Migration[5.2]
  def change
    create_table :property_toilet_artifacts do |t|
      t.references :property, foreign_key: true
      t.references :toilet_artifact, foreign_key: true
      t.references :quality, foreign_key: true

      t.timestamps
    end
  end
end

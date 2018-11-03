class CreateToiletArtifacts < ActiveRecord::Migration[5.2]
  def change
    create_table :toilet_artifacts do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end

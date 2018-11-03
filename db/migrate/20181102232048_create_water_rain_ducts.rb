class CreateWaterRainDucts < ActiveRecord::Migration[5.2]
  def change
    create_table :water_rain_ducts do |t|
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end

class AddQualityRefToPropertyExternTermination < ActiveRecord::Migration[5.2]
  def change
    add_reference :property_extern_terminations, :quality, foreign_key: true
  end
end

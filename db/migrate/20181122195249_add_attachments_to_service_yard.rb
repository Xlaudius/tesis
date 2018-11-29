class AddAttachmentsToServiceYard < ActiveRecord::Migration[5.2]
  def change
    add_column :service_yards, :attachments, :json
  end
end

json.extract! client, :id, :name, :contact, :number, :available, :client_type_id, :created_at, :updated_at
json.url client_url(client, format: :json)

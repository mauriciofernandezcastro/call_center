json.extract! cliente, :id, :numero_telefono, :nombre_cliente, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)

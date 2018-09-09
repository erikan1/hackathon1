json.extract! product, :id, :sku, :name, :dept, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)

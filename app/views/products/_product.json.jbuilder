json.extract! product, :id, :image, :url, :price, :description, :created_at, :updated_at
json.url product_url(product, format: :json)

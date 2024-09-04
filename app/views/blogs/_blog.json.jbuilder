json.extract! blog, :id, :title, :paragaph_1, :image_1, :paragraph_2, :image_2, :paragraph_3, :image, :data, :created_at, :updated_at
json.url blog_url(blog, format: :json)

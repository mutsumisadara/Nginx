json.extract! nginx_blog, :id, :title, :content, :created_at, :updated_at
json.url nginx_blog_url(nginx_blog, format: :json)

json.extract! article_like, :id, :article_id, :user_id, :created_at, :updated_at
json.url article_like_url(article_like, format: :json)

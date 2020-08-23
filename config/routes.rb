Rails.application.routes.draw do
  # resources :article_likes
  # resources :comments
  # resources :articles
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for "User", at: "auth"
      resources :articles
    end
  end
end

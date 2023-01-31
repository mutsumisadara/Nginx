Rails.application.routes.draw do
  root to: 'nginx_blogs#index'
  resources :nginx_blogs
end

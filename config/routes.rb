Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :nginx_blogs
end

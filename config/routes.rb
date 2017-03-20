Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :projects

  resources :posts

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  match '/contact', to: 'contact#new', via: 'get'
  resources :contact, only: [:new, :create]

  get 'about' => 'landing#about'

  get 'resume' => 'landing#resume'

  get 'download_resume', to: "landing#download_pdf"

  root to: 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

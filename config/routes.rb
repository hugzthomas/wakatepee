Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects, only: [:index, :show, :new, :create, :update] do
    resources :milestones, only: [:create]
  end
  resources :milestones, only: [] do
    resources :sub_milestones, only: [:create, :update]
  end
  resources :sub_milestones, only: [] do
    resources :comments, only: [:create]
  end

  resources :milestones, only: [:update]
end

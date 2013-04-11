Greentrack::Application.routes.draw do

  root :to => "projects#index"
  resources :projects, only: [:index, :create, :show]
  resources :features, only: [:new, :create]
end

Greentrack::Application.routes.draw do

  root :to => "projects#index"
  resources :projects, only: [:index, :create, :show]
end

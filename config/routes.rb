Greentrack::Application.routes.draw do

    root :to => "projects#index"
    resources :projects, only: [:index, :create, :show] do
        resources :features, only: [:new, :create]
    end

    resources :features, only: [:show] do
        resources :scenarios, only: [:new, :create, :edit, :update]
    end

    resources :scenarios, only: [:show]
end

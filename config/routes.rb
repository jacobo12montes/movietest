Rails.application.routes.draw do
  root to: "movies#index"
  devise_for :users
  get 'favmovies', to: 'favmovies#index'
  resources :movies do
    resources :favmovies, except: [:show]
  end
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :movies
    end
  end
  resources :api_keys, only: [:index, :create, :destroy]
end

Rails.application.routes.draw do
  root to: "movies#index"
  devise_for :users
  get 'favmovies', to: 'favmovies#index'
  resources :movies do
    resources :favmovies, except: [:show]
  end
end

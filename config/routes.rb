Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, except: [:destroy] do
    resources :bookmarks, only: [:create]
  end
  resources :bookmarks, only: [:destroy]
end

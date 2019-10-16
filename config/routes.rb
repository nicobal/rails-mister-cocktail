Rails.application.routes.draw do
  get 'doses/index'
  get 'doses/new'
  get 'doses/show'
  get 'doses/edit'
  get 'doses/update'
  get 'cocktail/index'
  get 'cocktail/new'
  get 'cocktail/show'
  get 'cocktail/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "cocktails#index"

  resources :cocktails do
    resources :doses
  end
end

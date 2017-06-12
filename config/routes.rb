Rails.application.routes.draw do
  get 'blogs/index'

  get 'blogs/genre'

  get 'blogs/show'

  get 'blogposts/index'

  get 'blogposts/add'

  get 'blogposts/edit'

  get 'blogposts/delete'

  get 'bloggenres/index'

  get 'bloggenres/add'

  get 'bloggenres/edit'

  get 'blogconfigs/index'

  get 'blogconfigs/edit'

  get 'cards/index'

  get 'cards/show'

  get 'cards/add'

  get 'cards/edit'

  get 'dengonban/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'helo/index'
  post 'helo/index'
  get 'helo', to: 'helo#index'

  get 'dengonban', to: 'dengonban#index'
  post 'dengonban', to: 'dengonban#index'
  get 'dengonban/index'
  post 'dengonban/index'

  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/add'
  post 'cards/add'

  get 'cards/:id', to: 'cards#show'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'

  get 'cards/delete/:id', to: 'cards#delete'
end

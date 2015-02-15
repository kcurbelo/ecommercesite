Rails.application.routes.draw do
  get 'carts/new'

  # get 'users/index'
  #
  # get 'users/show'
  #
  # get 'users/new'
  #
  # get 'users/create'
  #
  # get 'users/edit'
  #
  # get 'users/update'
  #
  # get 'users/destroy'

  #todo Ask about why when I use resources it works but when I don't it doesn't
  resources :jackets

  root 'jackets#index'

  delete '/sessions' => 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:index, :new, :create, :show]

  resources :carts
  #
  # get 'jackets' => 'jackets#index'
  #
  # get 'jackets/new' => 'jackets#new'
  #
  # post 'jackets/' => 'jackets#create'
  #
  # # resources :jackets, path_names: { edit: "edit_jacket" }
  # # get '/jackets/:id/edit' => 'jackets#edit'
  #
  # patch 'jackets/:id' => 'jackets#update'
  #
  # get 'jackets/:id' => 'jackets#show', as: :jacket
  # # get 'jackets/:id' => 'jackets#show', as: :beverage
  #
  # delete 'jackets/:id' => 'jackets#destroy'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

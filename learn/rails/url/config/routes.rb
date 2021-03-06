Rails.application.routes.draw do
  resources :auctions
  get 'users/total' => 'user#total'
  get 'users' => 'user#index'
  get 'users/new' => 'user#new'
  get 'users/:id/edit' => 'user#edit'


  post 'users/new' => 'user#new_user'
  get 'users/:id' => 'user#show'


  # get 'user/new'
  #
  # get 'user/edit'
  #
  # get 'hello' => 'hello#index'
  # get 'say/hello' => 'hello#say'
  # get 'say/hello/joe' => 'hello#say2'
  # get 'say/hello/michael' => 'hello#say3'
  # get 'times' => 'hello#times'
  # get 'times/restart' => 'hello#restart'
  #
  # get 'hello/new'
  #
  # root 'hello#index'
  #
  # get 'users' => 'user#index'
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

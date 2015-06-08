Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root "welcome#welcome_page"
  # (1) This tells the computer to go to the "welcome" controller  
  # (sample_app/app/controllers/welcome_controller) & run the 
  # "welcome_page" method defined therein.
  # (2) "root" makes this page the default index page.
  
  get("hello_world" => "welcome#home_page")

  get "welcome" => "welcome#welcome_page"
  # (1) "get" is a method that takes a hash (i.e., ""hello_world" => "welcome#home_page"")
  # (2) Here, the 1st "welcome" = the subdirectory name, i.e., "localhost:300/welcome". 
  # When the user types in that URL, the computer goes to the "welcome" controller &
  # runs the "welcome_page" method defined there.

  get "villains/:key" => "welcome#detail"
  # "localhost:3000/villains/[:key]" is instructed to run the "detail" method in 
  # the "welcome" controller.



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

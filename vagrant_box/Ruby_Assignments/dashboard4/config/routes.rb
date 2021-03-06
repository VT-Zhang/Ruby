Rails.application.routes.draw do

  get "/dojos" => "dojo_controller#index"
  get "/dojos/new" => "dojo_controller#new"
  post "/dojos" => "dojo_controller#create"
  get "/dojos/:id/edit" => "dojo_controller#edit"
  get "/dojos/:id" => "dojo_controller#show"
  patch "/dojos/:id" =>"dojo_controller#update"
  delete "/dojos/:id" =>"dojo_controller#destroy"

  get "/dojos/:dojo_id/students" => "student_controller#index"
  get "/dojos/:dojo_id/students/new" => "student_controller#new"
  post "/dojos/:dojo_id/students" => "student_controller#create"
  get "/dojos/:dojo_id/students/:id/edit" => "student_controller#edit"
  get "/dojos/:dojo_id/students/:id" => "student_controller#show"
  patch "/dojos/:dojo_id/students/:id" => "student_controller#update"
  delete "/dojos/:dojo_id/students/:id" => "student_controller#destroy"


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

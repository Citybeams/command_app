CommandsApp::Application.routes.draw do

  resources :users
  resources :user_sessions
  resources :new
  resources :create
  resources :quizzes


  root to: 'subjects#index'  #this is a route route; http://localhost:3000/ >> http://localhost:3000/subjects

  resources :subjects

  resources :subjects do
    resources :quizzes
  end
  #nesting the route of quizzes within subjects

 post '/quizzes(params[:id])' => 'subjects#show'
 post '/answers(params[:id])' => 'subjects#show'

 # resources :quizzes

 get  "/session/new"  => "session#new"
 post "/session"      => "session#create"
 get  "/logout"      => "session#destroy"

#generated by the Subjects Controller
  #  post "subjects#create"
  #  get "subjects#show"
  #  get "subjects/new"
  #  get "subjects/edit"
  #  get "subjects/delete"

  get '/google' => redirect('http://www.google.com/') #example of how a custom route redirect works!!!




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

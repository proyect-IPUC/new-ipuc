Rails.application.routes.draw do

  resources :ofrendasems

  resources :servicios

  resources :otrosings

  resources :eventos

  resources :diezmoanuals

  resources :diezmotris

  resources :diezmosems

  resources :diezmodia

  resources :ofrendanuals

  resources :ofrendatris

  resources :ofrendadia


  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout

  get 'user_sessions/new'

  get 'user_sessions/create'

  get 'user_sessions/destroy'

  resources :users

  resources :events

  resources :p_trabajos

  resources :cancions do
      resources :letracancs
  end

  resources :directivas do
       resources :modulos
       resources :p_trabajos
  end

  resources :miembrs


  get 'paginaeg/egresos'

  get 'paginain/ingresos'

  get 'paginadi/diezmo'

  get 'pagina/ofrenda'

  get 'static_pages/ofrenda'

  

  resources :directivas

  #get 'static_pages/biblia' 
  match '/biblia', to: 'static_pages#biblia',  via: 'get'
  resources :cancions

  resources :membrecia

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'cancions#index'


  get 'totalofrendasemanal', to: "ofrendasems#insert_ofrendasems", as: 'totalofrendasemanal'

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

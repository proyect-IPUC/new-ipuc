Rails.application.routes.draw do
  get 'paginaeg/egresos'

  get 'paginain/ingresos'

  get 'paginadi/diezmo'

  get 'pagina/ofrenda'

  get 'static_pages/ofrenda'

  get 'modulos/junta'

  get 'modulos/jovenes'

  get 'modulos/damas'

  get 'modulos/esc_dom'

  get 'modulos/vigilancia'

  get 'modulos/aseo'

  get 'modulos/intercepcion'

  get 'modulos/recepcion'

  get 'modulos/misiones'

  get 'modulos/cafeteria'

  get 'modulos/alabanza'

  get 'modulos/renuevos'

  get 'modulos/evangelismo'

  get 'modulos/publicidad'

  get 'modulos/audiovisuales'

  get 'modulos/protemplo'

  get 'damas/Dorcas'

  resources :directivas

  #get 'static_pages/biblia' 
  match '/biblia', to: 'static_pages#biblia',  via: 'get'
  resources :cancions

  resources :eventos

  resources :membrecia

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'cancions#index'

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

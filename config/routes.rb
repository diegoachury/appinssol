Appinssol::Application.routes.draw do
  


  devise_for :sellers
   devise_scope :seller do
     get 'virtual', to: 'devise/sessions#new', as: :virtual
  end

  get "site_sale/index"
    get "site_sale/show"
    match '/site_sale/:id', :to => 'site_sale#show', :via => :get

  resources :categories


  resources :products


  get "panel/index"
get "users/index"

match '/users/:id', :to => 'users#show',    :as => :user,         :via => :get
match '/users/:id', :to => 'users#destroy', :as => :destroy_user, :via => :delete

  resources :quotes
  


  resources :contacts
      


  devise_for :users

  devise_scope :user do
    get 'registrar', to: 'devise/registrations#new', as: :registrar
    get 'login', to: 'devise/sessions#new', as: :login
    get 'logout', to: 'devise/sessions#destroy', as: :logout  
  end
 
  devise_for :admins
devise_scope :admin do
   
    get 'lubu', to: 'devise/sessions#new', as: :administrador
    
  end


  resources :welcomes


  resources :customers


  resources :brands


  resources :types


  get "home/index"
  get 'inicio', to: 'home#index', as: :inicio
    get 'servicios', to: 'home#servicio', as: :servicios
    get 'company', to: 'home#company', as: :company
    get 'gestion', to: 'home#gestion', as: :gestion
        get "home/gestion"    

  scope '(:locale)' do
  get 'inicio', to: 'home#index', as: :inicio
    get 'servicios', to: 'home#servicio', as: :servicios
    get 'company', to: 'home#company', as: :company
    get 'gestion', to: 'home#gestion', as: :gestion
    get 'cotizar', to: 'quotes#new', as: :cotizar
    get 'contacto', to: 'contacts#new', as: :contacto
    get 'catalogo', to: 'home#catalogo', as: :catalogo
    root :to => 'home#home'
  end

  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

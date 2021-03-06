Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

  resources :vendors, only: [ :create ]
  resources :trades
  resources :boards

  get 'trade-signup',       to: "vendors#new"
  get 'vendor-signup',      to: "trades#new"
  get 'vendor-onboarding',  to: "boards#new"

  get 'trade_success',         to: 'static_pages#trade'
  get 'vendor_success',        to: 'static_pages#vendor'
  get 'board_success',         to: 'static_pages#board'
  get 'board_success_update',  to: 'static_pages#board_update'
  get 'trade_success_update',  to: 'static_pages#trade_update'
  get 'about',                 to: 'static_pages#about'
  get 'product_categories',    to: 'static_pages#product_categories'
  get 'upload_vendor_agreement_success',  to: 'static_pages#upload_vendor_agreement_success'

  get 'persons/profile', as: 'user_root'
  get 'upload-vendor-agreement-new',  to: 'persons#upload_vendor_agreement_new'
  post 'upload-vendor-agreement-new', to: 'persons#upload_vendor_agreement_create'

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

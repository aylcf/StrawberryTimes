Rails.application.routes.draw do
  devise_for :members
  resources :members
  post 'members/sign_up'

  resources :alliance_gardens
  post 'alliance_gardens/input_garden'
  get 'alliance_gardens/show'


  resources :newslists

  resources :stories
  get 'stories/index'


  get 'static_pages/about'
  get 'static_pages/jianianhua'
  get 'static_pages/worldcongress'
  get 'static_pages/agencygarden'
  get 'static_pages/story'
  get 'static_pages/contact'
  get 'static_pages/newslist'
  get 'static_pages/alliance_garden'
  post 'static_pages/alliance_garden'
  get 'static_pages/tianrunyuan'
  get 'static_pages/wandezhuangyuan'
  get 'static_pages/wanliyuan'
  get 'static_pages/show_contact'
  get 'static_pages/input_garden_info'
  post 'static_pages/input_garden_info'

  post 'members/create_contact'

  resources :orders

  get 'recipe_blog/index'
  get 'recipe_blog/' => 'recipe_blog#index'
  resources :recipes

  get 'console/main'
  get 'console/' => 'console#main'
  resources :users

  resources :line_items
  get 'line_items/new'

  resources :store
  resources :carts

  get 'store/index'

  get 'home/index'
  root :to => 'home#index', :as => 'home'

  resources :products
  # 这样以后就可以使用类似product_path(@product)的方法来获取product对应的路径了
  #get 'products/' => 'products#index'

  resource :products do
    get :who_bought, :on => :member
  end


  controller :sessions do
    get 'login'=> :new
    post 'login'=> :create
    delete 'logout'=> :destroy
  end
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


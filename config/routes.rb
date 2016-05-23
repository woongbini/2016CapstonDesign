Testapp::Application.routes.draw do
  root "mainpage#mainpage"                  #mainpage 보여줌
  get "voluntal/register"                   #Voluntal 등록 창으로 넘어감
  post "voluntal/register_process"          #voluntal 등록 처리
  get "voluntal/show/:id" =>'voluntal#show' #단일 게시글 보기 처리
  get "users/signup"                        #회원가입 페이지로 이동
  post "users/signup_complete"              #회원가입 처리
  get "users/login"                         #로그인 페이지로 이동
  post "users/login_complete"               #로그인 처리
  get "users/logout_complete"               #로그아웃 처리
  get "users/mypage"                        #내 페이지 보기
  post "voluntal/join_process"              #Voluntal에 참여하기 처리
  
  get "voluntal/create_complete"
  get "voluntal/edit"
  get "voluntal/edit_complete"
  get "voluntal/delete_complete"
  get "mainpage/addmemberpage"
  get  "intro/intro" 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the iroot of your site routed with "root"
    #root :to => "mainpage#mainpage"


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

Rails.application.routes.draw do
  get 'homes/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root  'homes#index'
  resources :users
  resources :schools
  resources :tasks
  resources :meetings
  resources :requests
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  
  get 'users/:id/edit' => 'users#edit'
  get 'users/:id/view' => 'users#view'
  get 'requests/:id/view' => 'requests#view'
  get '/logout' => 'sessions#destroy'
  delete '/logout'  => 'sessions#destroy'
  
  post '/siteadmin/create_user' => 'siteadmin#create_user'
  get '/siteadmin/create_user' => 'siteadmin#create_user'
  get '/siteadmin' =>'siteadmin#index'
  get '/siteadmin/disable_schools' =>'siteadmin#disable_schools'
  get '/siteadmin/create_school' =>'siteadmin#create_school'
  post '/siteadmin/create_school' => 'siteadmin#create_school'
  get '/siteadmin/show_schools' =>'siteadmin#show_schools'
  get '/siteadmin/reset' =>'siteadmin#reset'
  get '/siteadmin/show_people' =>'siteadmin#show_people'
  get '/siteadmin/wait_schools' =>'siteadmin#wait_schools'
  get '/siteadmin/:id/edit' => 'siteadmin#edit'
  
  get '/meetings/:id/edit' => 'meetings#edit'
  get '/meetings/:id/view' => 'meetings#view'  
  
  get '/schools/:id/edit' => 'schools#edit'
  get '/schools/:id/view' => 'schools#view'
  
  post '/schooladmin/create_user' => 'schooladmin#create_user'
  get '/schooladmin/create_user' => 'schooladmin#create_user'
  get '/schooladmin/:id/edit' => 'schooladmin#edit'
  get '/schooladmin/:id/view' => 'schooladmin#view'
  get '/schooladmin/wait_students' => 'schooladmin#wait_students'
  get '/schooladmin/show_students' => 'schooladmin#show_students'
  get '/schooladmin/disabled_studs' => 'schooladmin#disabled_studs'
  get '/schooladmin/show_instructors' => 'schooladmin#show_instructors'
  get '/schooladmin/disable_instructors' => 'schooladmin#disable_instructors'
  get '/schooladmin/disabled_insts' => 'schooladmin#disabled_insts'
  get '/schooladmin/reset' => 'schooladmin#reset'

  

  
  
  get '/schooladmin' =>'schooladmin#index'
  
  get '/student' => 'student#index'
  get '/student/:id/edit' => 'student#edit'
  get '/student/:id/view' => 'student#view'
  get '/student/show_progress' => 'student#show_progress'
  get '/student/time' => 'student#time'
  get '/student/create_request' => 'student#create_request'
  get '/student/create_meeting' => 'student#create_meeting'
  get '/student/show_tasks' => 'student#show_tasks'
  get '/student/reset' => 'student#reset'
  
  get '/instructor' => 'instructor#index'
  get '/instructor/show_students' => 'instructor#show_students'
  get '/instructor/select_students' => 'instructor#select_students'
  get '/instructor/wait_students' => 'instructor#wait_students'
  get '/instructor/reset' => 'instructor#reset'
  get '/instructor/disable_students' => 'instructor#disable_students'
  get '/instructor/:id/edit' => 'instructor#edit'
  get '/instructor/:id/create_task' => 'instructor#create_task'
  get '/instructor/:id/view' => 'instructor#view'
  post '/instructor/create_user' => 'instructor#create_user'
  get '/instructor/create_user' => 'instructor#create_user'
  get '/instructor/disabled_studs'  => 'instructor#disabled_studs'
  get '/instructor/create_task' => 'instructor#create_task'
  post '/instructor/create_task' => 'instructor#task'
  get '/instructor/:id/show_progress' => 'instructor#show_progress'
  
  get '/instructor/select_progress' => 'instructor#select_progress'
  get '/instructor/show_requests' => 'instructor#show_requests'
  
  get '/users/reset' => 'users#reset'
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

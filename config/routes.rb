Rails.application.routes.draw do

  namespace :staff do
    get 'changes/edit'
  end
  namespace :customer do
    root 'top#index'
  end
  namespace :admin do
    root 'top#index'
    get "login" , to: "sessions#new" , as: :login
    post "session", to: "sessions#create", as: :session
    delete "session", to: "sessions#destroy", as: :logout
    
    resources :controll, only:[:index , :show]
  end
  namespace :staff, path:"" do
    root 'top#index'
    get  "login", to: 'sessions#new', as: :login
    post "session", to: 'sessions#create', as: :session
    delete "session", to: "sessions#destroy", as: :logout

    get "dakoku", to:"dakoku#new", as: :dakoku
    get "all_dakoku", to:"dakoku#index"
    post "push", to:"dakoku#create", as: :push
    delete "pull", to:"dakoku#destroy", as: :pull

    resource :changes ,only:[:edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

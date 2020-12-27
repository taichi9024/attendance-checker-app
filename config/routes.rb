Rails.application.routes.draw do
  namespace :customer do
    root 'top#index'
  end
  namespace :admin do
    root 'top#index'
  end
  namespace :staff, path:"" do
    root 'top#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

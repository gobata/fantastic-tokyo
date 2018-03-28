Rails.application.routes.draw do
  root 'web/home#index'
  #Web
  scope module: :web do

  end

  namespace :admin do
    get '/' => 'admin#index'
  end


  devise_for :admin_users, controllers: {
    sessions:      'admin_users/sessions',
    passwords:     'admin_users/passwords',
    registrations: 'admin_users/registrations'
  }
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

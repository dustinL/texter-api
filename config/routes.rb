Rails.application.routes.draw do
devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
# devise_for :users
  root to: 'messages#index'

  resources :messages
end

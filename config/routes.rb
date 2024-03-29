require 'devise_token_auth'

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  namespace :api do
    namespace :v1 do
      resources :exams, only: %i[index show]
    end
  end
end

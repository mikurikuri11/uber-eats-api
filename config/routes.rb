Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :restaurants do
        resources :foods, only: [:index, :show]
      end
      resources :line_foods, only: [:index, :create]
      put 'line_foods/replace', to: 'line_foods#replace', as: 'replace_line_foods'
      resources :orders, only: [:create]
    end
  end

  post 'auth/:provider/callback', to: 'api/v1/users#create', as: 'auth_callback'
end

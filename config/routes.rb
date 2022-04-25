Rails.application.routes.draw do
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      # get 'products/index'
      # get 'products/show'
      # resources :products, only: %i[index show create]
      resources :products do
        collection do
          get :category
        end
      end
    end
  end
end

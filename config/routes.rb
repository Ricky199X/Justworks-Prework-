Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  root 'welcome#index'

  # resources -> creates the restful routes for articles + their comments
  resources :articles do
    resources :comments
  end

  # namespace :api, defaults: { format: :json } do
  #   namespace :v1 do
  #     resources :articles do 
  #   end
  # end
  # namespace :api do
  #   resources :articles
  # end

end

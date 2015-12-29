Rails.application.routes.draw do
  api_version(:module => "v1", :path => {value: 'v1'}) do
    resources :posts, only: [:index, :show]
    resources :rabbits, only: [:index]
  end

  resources :rabbits
end

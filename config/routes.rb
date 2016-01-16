Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  api_version(:module => "v1", :path => {value: 'v1'}) do
    resources :quotes, only: [:index]
    resources :quote_versions, only: [:index]
  end
end

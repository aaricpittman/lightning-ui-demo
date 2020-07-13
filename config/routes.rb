Rails.application.routes.draw do
  resources :components, only: %i(index show)

  root 'components#index'
end

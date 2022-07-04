Rails.application.routes.draw do
  devise_for :administradores
  devise_for :usuarios

  root to: "sitio#index"

  get "/instalacion", to: "sitio#install"

  scope 'admin' do 
    resources :categorias
    resources :productos
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

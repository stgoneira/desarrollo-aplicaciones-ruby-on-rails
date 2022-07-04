Rails.application.routes.draw do
  devise_for :licitantes
  devise_for :empresas
  devise_for :administradores
  root to: "sites#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

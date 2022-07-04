Rails.application.routes.draw do
  root to: "sitio#index"  

  scope 'admin' do 
    resources :categorias
    resources :productos
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

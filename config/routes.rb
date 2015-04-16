Musicapp::Application.routes.draw do
  resources :users, only: [:create, :new, :edit, :show]
  resource :session, only: [:create, :new, :destroy]
  resources :bands do
    resources :albums, only: [:new]
  end
  resources :albums, only: [:create, :edit, :show, :update, :destroy]
end

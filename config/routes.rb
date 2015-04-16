Musicapp::Application.routes.draw do
  resources :users, only: [:create, :new, :edit]

end

Rails.application.routes.draw do
  get 'games/index'
  get 'games/show'
  resources :games, only: [:index, :show]
end

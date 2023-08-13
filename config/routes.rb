Rails.application.routes.draw do
  root "top#index"

  resources :episodes, only: %i[index new create show] do
    resources :like, only: %i[create destroy]
  end

  get "ranking", to: "likes#ranking"
end

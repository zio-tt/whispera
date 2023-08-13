Rails.application.routes.draw do
  root "top#index"

  resources :episodes, only: %i[index new create show], shallow: true do
    controller :likes do
      post "like", action: :create
      delete "unlike", action: :destroy
    end
  end

  get "ranking", to: "likes#ranking"
end

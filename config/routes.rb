Rails.application.routes.draw do
  root "top#index"

  resources :episodes, shallow: true do
    controller :likes do
      post "like", action: :create
      delete "unlike", action: :destroy
    end
    collection do
      get 'search'
    end
  end

  get "ranking", to: "likes#ranking"
end

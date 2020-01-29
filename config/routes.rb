Rails.application.routes.draw do
  root "events#index"

  resources :events, only: %i[index create] do
    get "find_availabilities", on: :collection
  end
end

Rails.application.routes.draw do
  resources :notes, only: [:index, :create] do
    resources :tags, only: [:show]
  end

end

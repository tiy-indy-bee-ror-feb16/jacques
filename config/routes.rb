Rails.application.routes.draw do

  scope '/api', defaults: { format: 'json' } do
    resources :notes, only: [:index, :create]
    get 'notes/tag/:name', to: 'tags#show', as: :tag
  end

end

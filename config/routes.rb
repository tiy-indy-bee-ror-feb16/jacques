Rails.application.routes.draw do

  scope '/api', defaults: { format: 'json' } do
    resources :notes, only: [:index, :create]
    get 'notes/tag/:tag', to: 'notes#index', as: :tag
  end

end

Rails.application.routes.draw do

  scope '/api' do
    resources :notes, only: [:index, :create], defaults: { format: 'json' }
    get 'notes/tag/:tag', to: 'notes#index', as: :tag
  end

end

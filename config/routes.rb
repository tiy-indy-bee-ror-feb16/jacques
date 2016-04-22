Rails.application.routes.draw do

  resources :users
  scope '/api' do
    resources :notes, defaults: { format: 'json' }
  end

  get '/api/notes/tag/:tag_name'  => 'tags#show', as: :tag, defaults: { format: 'json' }

end

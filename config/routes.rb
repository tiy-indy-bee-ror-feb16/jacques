Rails.application.routes.draw do
  # resources :notes, path: 'api', as: :notes
  get  '/api/notes' => 'notes#index',  as: :root
  post '/api/notes' => 'notes#create', as: :new_note
  get '/api/notes/tag/:name' => 'notes#show', as: :by_tag
end

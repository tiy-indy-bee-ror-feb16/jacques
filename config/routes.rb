Rails.application.routes.draw do
  root                 'notes#index'
  get  '/api/notes' => 'notes#index', defaults: { format: 'json' }
  post '/api/notes' => 'notes#create', defaults: { format: 'json' }
  get  '/api/notes/tag/:name' => 'tags#show', defaults: { format: 'json' }
end

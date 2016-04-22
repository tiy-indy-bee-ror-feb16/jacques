Rails.application.routes.draw do
  root                 'notes#index'
  get  '/api/notes' => 'notes#index'
  post '/api/notes' => 'notes#create', as: :new_note
  # get  '/api/notes/tag/:name' => 'tags#show', as: :notes_by_tag
  #^^ NOT WORKING, NEXT TASK!!
end

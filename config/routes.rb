Rails.application.routes.draw do

  scope '/api', defaults: { format: 'json' } do
    resources :notes
    post '/users/create'      => 'users#create', as: :new_user
    get 'notes/tag/:tag_name' => 'tags#show', as: :tag
  end

end

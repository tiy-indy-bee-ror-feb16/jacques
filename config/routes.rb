Rails.application.routes.draw do

  scope '/api' do
    resources :notes, defaults: { format: 'json' }
  end

end

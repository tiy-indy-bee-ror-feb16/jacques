Rails.application.routes.draw do

  scope '/api' do
    resources :notes
  end
end

Rails.application.routes.draw do
  root 'users#index'
  get 'users/:username' => 'users#show'
end

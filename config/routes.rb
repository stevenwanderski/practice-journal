Rails.application.routes.draw do
  root 'practice_sessions#index'

  get :latest, to: 'latest_session#edit'
  patch :latest, to: 'latest_session#update'

  resources :practice_sessions
end

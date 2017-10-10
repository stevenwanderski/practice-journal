Rails.application.routes.draw do
  root to: redirect('/latest')

  get :latest, to: 'latest_session#edit'
  patch :latest, to: 'latest_session#update'

  resources :practice_sessions
end

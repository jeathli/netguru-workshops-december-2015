Rails.application.routes.draw do
  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  resources :visitors

  get 'report/subjects', to: 'reports#subjects'
  get :visitors, to: 'visitors#index'

  root 'visitors#index'
end

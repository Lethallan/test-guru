Rails.application.routes.draw do

  get 'badges/index'
  get 'users/index'
  get 'users/show'
  get 'user/index'
  get 'user/show'
  get 'contact_forms/new'
  get 'contact_forms/create'
  get 'gists/index'
  devise_for :users, path: :gurus, path_names: {sign_in: :login, sign_out: :logout}

  # get 'sessions/new'
  # get 'users/new'
  root 'tests#index'

  # get :signup, to: 'users#new'
  # get :login, to: 'sessions#new'
  # delete :logout, to: 'sessions#destroy'
  # get :logout, to: 'sessions#destroy'

  # resources :users, only: :create
  # resources :sessions, only: :create

  resources :contact_forms, only: %i[new create]

  resources :users, only: %i[show] do
    resources :badges, shallow: true, only: %i[index]
  end

  resources :tests, only: :index do
    post :start, on: :member
  end

  #GET /test_passages/101/result
  resources :test_passages, only: %i[show update] do
    get :result, on: :member
    post :gist, on: :member
  end

  namespace :admin do
    resources :tests do
      patch :update_inline, on: :member

      resources :questions, shallow: true, except: :index do
        resources :answers, shallow: true, except: :index
      end
    end

    resources :gists, only: :index
  end
end

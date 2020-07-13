Rails.application.routes.draw do

  root 'tests#index'

  resources :tests

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #_____________________________________________________________________________
  #Что тут вообще можно написать:

  #resources :tests

  #resource :account

  #resource :account, controller: :account

  #resources :tests, only: %i[index show]

  # resources :tests do
  #   resources :questions
  # end

  # resources :tests do
  #   resources :questions, shallow: true
  # end

  # GET /tests/beginner
  # POST /tests/1/start

  # resources :tests do
  #   get :beginner, on: :collection

  #   member do
  #     post :start
  #   end
  # end

  # get '/tests', to: 'tests#index'

  # get '/tests/:id', to: 'tests#show', as: :test

  # get 'tests(/:id)', to: 'test#show'

  # get 'test/:id/start', to: 'test#start'

  # get 'test/:id/start', to: 'tasks#start'

  # match '/tests/:id', to: 'tests#create', via: %i[post put]

  # match '/tests/:id', to: 'tests#create', via: :all

  #root to: 'tests#index'

  #____________________________________________________________________________

  #/tests/backend/ruby
  # get 'tests/:category/:title', to: 'tests#search', level: 2
end

Rails.application.routes.draw do
  get 'users' => 'users#index'

  get 'users/new' => 'users#new'

  get 'users/:id' => 'users#show'

  get 'users/:id/edit' => 'users#edit'

  post 'users' => 'users#create'

  patch 'users/:id' => 'users#update'


  # User "Sign In" page
  get 'sessions/new' => 'sessions#new'

  # User "Sign Out" button
  delete 'sessions/:id' => 'sessions#destroy'

  # Verify user and sign in if inputed
  # email and password match DB
  post 'sessions' => 'sessions#create'

end

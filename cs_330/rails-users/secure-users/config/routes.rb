Rails.application.routes.draw do
  get 'users' => 'users#index'

  get 'users/new' => 'users#new'

  get 'users/:id' => 'users#show'

  get 'users/:id/edit' => 'users#edit'

  # Create new user
  post 'users' => 'users#create'

  # Update user
  patch 'users/:id' => 'users#update'

  # Delete user
  delete 'users/:id' => 'users#destroy'

  # User "Sign In" page
  get 'sessions/new' => 'sessions#new'

  # User "Sign Out" button
  delete 'sessions/:id' => 'sessions#destroy'

  # Verify user and sign in if inputed
  # email and password match DB
  post 'sessions' => 'sessions#create'

end

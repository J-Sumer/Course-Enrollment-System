Rails.application.routes.draw do
  resources :users
  get '/users/edit', to: 'users#edit'
  get '/courses/instructor', to: 'courses#instructor'
  get '/allenrollments', to: 'enrollments#allenrollments'
  get '/allWaitlists', to: 'waitlists#allWaitlist'
  get '/myCourseEnrollments', to: 'enrollments#myCourseEnrollments'
  get '/myCourseWaitlists', to: 'waitlists#myCourseWaitlists'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#logout'
  resources :waitlists
  resources :enrollments
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end

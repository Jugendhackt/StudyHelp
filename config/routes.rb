StudyHelp::Application.routes.draw do
  resources :users
  resources :stunden
  # resources :sessions
  get '/login/', to: 'sessions#new'
  post '/login/', to: 'sessions#create'
  get '/logout/', to: 'sessions#destroy'
  root to: 'welcome#index'

  # Timetable
  #get 'timetable' => 'timetable#week'
  #get 'timetable/week/:weeknumer' => 'timetable#week'
  #get 'timetable/day/:d/:m/:y'

end

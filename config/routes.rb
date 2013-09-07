StudyHelp::Application.routes.draw do
  resources :users
  resources :stunden
  root to: 'welcome#index'

  # Timetable
  #get 'timetable' => 'timetable#week'
  #get 'timetable/week/:weeknumer' => 'timetable#week'
  #get 'timetable/day/:d/:m/:y'

end

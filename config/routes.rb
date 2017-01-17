Rails.application.routes.draw do
  get 'pomodoros/index'

  get 'pomodoros/new'

  get 'pomodoros/edit'

  get 'pomodoros/show'

  get 'tasks/index'

  get 'tasks/new'

  get 'tasks/edit'

  get 'tasks/show'

  get 'projects/index'

  get 'projects/new'

  get 'projects/edit'

  get 'projects/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks, :projects, :contexts, :pomodoros
end

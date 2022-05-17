Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # page that loads all the heroes
  get '/tasks', to: 'tasks#index'

  # page that adds new hero
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  #  Edit a hero
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch '/tasks/:id', to: 'tasks#update'

  #delete hero

  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'

  get '/tasks/:id', to: 'tasks#show', as: 'task'
end

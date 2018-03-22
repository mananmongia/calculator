Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'tasks#index',  as: "home"
  get 'tasks/index'
  get 'tasks/new'
  post 'tasks/create' => "tasks#create", as:"tasks"
  get 'tasks/:id/edit' => "tasks#edit"
  patch 'tasks/:id/update' => "tasks#update", as: "update"
  resources :tasks
  get 'tasks/:id/destroy' =>"tasks#destroy"

end

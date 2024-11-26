Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # route - lister les taches
  get 'tasks', to: 'tasks#index'
  # route - ajouter une nouvelle tache
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  #  route - editer une tache
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # route - supprimer une tache
  delete 'tasks/:id', to: 'tasks#destroy'
  # route - afficher les details d'une tache
  get 'tasks/:id', to: 'tasks#show', as: :task
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  # patch 'tasks/mark/:id', to: 'tasks#mark_as_complete', as: :mark_task_as_complete
end

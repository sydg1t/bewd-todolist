Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'homepage#index'
  get 'tasks' => 'tasks#index'
  # Add routes below this line
  post 'tasks' => 'tasks#create'
  put 'tasks/:id/mark_complete' => 'tasks#mark_complete'
  put 'tasks/:id/mark_active' => 'tasks#mark_active'
  # Add routes below above line
  delete 'tasks/:id' => 'tasks#destroy'
  # Redirect all other paths to index page, which will be taken over by AngularJS
  get '*path' => 'homepage#index'
end

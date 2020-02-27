Rails.application.routes.draw do
  resources :students
  resources :instructors
  # delete '/instructors/:id', to: 'instructors#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

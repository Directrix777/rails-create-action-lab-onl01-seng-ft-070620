Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new, :create, :edit, :update]
  get '/student/:id', to: 'students#show', as: 'student'
  resources :school_classes, only: [:index, :new, :create, :edit, :update]
  get '/school_class/:id', to: 'schoolclasses#show', as: 'school_class'
end

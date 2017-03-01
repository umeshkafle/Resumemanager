Rails.application.routes.draw do
  
  get 'schedules/index'

  get 'schedules/show'

  get 'schedules/new'

  get 'schedules/create'

  get 'schedules/edit'

  get 'schedules/update'

  devise_for :users
  resources :curriculumvitaes 
  resources :shortlists

 

  
  
  root "curriculumvitaes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

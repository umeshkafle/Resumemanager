Rails.application.routes.draw do
  
  devise_for :users
  resources :curriculumvitaes 
  resources :shortlists

 

  
  
  root "curriculumvitaes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

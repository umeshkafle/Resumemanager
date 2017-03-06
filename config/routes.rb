Rails.application.routes.draw do

  devise_for :users
  resources :shortlists
  resources :curriculumvitaes do
  	resources :schedules
  end

 #get 'all_schedules' => 'schedules#all_schedules'


  root "curriculumvitaes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


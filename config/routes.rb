Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { invitations: 'devise/users_invitations' }
  resources :curriculumvitaes do
  	resources :schedules
    resources :summaries
  end
  resources :shortlists

  

  get 'all_schedules' => 'schedules#all_schedules'

  #binding.pry
  resources :search, only: [:index]


  root "curriculumvitaes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


Rails.application.routes.draw do

  get 'search/show'

  get 'invitations/new'

  get 'invitations/create'

  get 'invitations/edit'

  get 'invitations/update'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { :invitations => 'users/invitations'}

  resources :curriculumvitaes do
  	resources :schedules
    resources :summaries
  end
  resources :shortlists

  

 get 'all_schedules' => 'schedules#all_schedules'


  root "curriculumvitaes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


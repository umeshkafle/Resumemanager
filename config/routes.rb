Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, 
          :controllers => {:invitations => 'users_invitations'}# user_invitations_controller.rb
                             
    resources :curriculumvitaes do
  	resources :schedules
    resources :summaries
  end
  resources :shortlists
  
  get 'search' => 'search#show'
  post 'search' => 'search#show'


  root "curriculumvitaes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


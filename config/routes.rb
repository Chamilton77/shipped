Rails.application.routes.draw do
  devise_for :admins, controllers: {
        sessions: 'admins/sessions',
        registrations: 'admins/registrations'
      }

  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

   resources :boats  
   resources :jobs 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/boatjobs' => 'boatjobs#create'
  root to: "home#index"
end

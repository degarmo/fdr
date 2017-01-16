Rails.application.routes.draw do


  root to: 'pages#index'

  get 'jobs/index'

  get 'jobs/new'

  get 'jobs/archive'

  get 'pages/index'

  get 'pages/careers'
  
  get 'pages/about'

  get 'pages/contact'

  get 'pages/customers'

  get 'pages/info_sys'

  get 'pages/languages'

  get 'pages/medical'

  get 'pages/solutions'

  get 'pages/specialized_training'

  get 'pages/staffing'


  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]
  resources :jobs
     
end

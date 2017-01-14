Rails.application.routes.draw do

  root to: 'pages#index'

  resources :jobs   

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

end

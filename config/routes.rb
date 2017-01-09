Rails.application.routes.draw do
  get 'p/index'

  get 'p/about'

  get 'p/solutions'

  get 'p/customers'

  get 'p/careers'

  get 'p/specialized_training'

  get 'p/info_sys'

  get 'p/languages'

  get 'p/medical'

  get 'p/staffing'

  root to: 'p#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

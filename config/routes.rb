Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :upcoming_events, only: [:index, :new, :create]

  get '/anxiety', to: 'mental_issue#anxiety'
  get '/depression', to: 'mental_issue#depression'
  get '/addiction', to: 'mental_issue#addiction'
  get '/anger', to: 'mental_issue#anger'
  get '/eatingdistress', to: 'mental_issue#eatingdistress'
  get '/suicidalfeelings', to: 'mental_issue#suicidalfeelings'
  
  get '/appointment_form', to: 'appointment_form#new'

end

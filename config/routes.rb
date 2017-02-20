Rails.application.routes.draw do

  root to: 'application#index'
  post '/contact', to: 'application#contact'
  
end

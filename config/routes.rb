Rails.application.routes.draw do

  resources :travelers

  root 'welcome#index'

end

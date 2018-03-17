Rails.application.routes.draw do
  resources :user_scenarios
  devise_for :users
	root to: 'user_scenarios#index'
end

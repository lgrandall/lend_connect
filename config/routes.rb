Rails.application.routes.draw do
  resources :tier_literals
  resources :user_scenarios
  devise_for :users
	root to: 'user_scenarios#index'
end

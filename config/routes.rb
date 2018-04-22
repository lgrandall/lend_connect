Rails.application.routes.draw do
  resources :add_investments
  resources :tier_literals

  resources :user_scenarios do 
  	resources :add_investments, :except => [:destroy, :edit]
  end

  resources :add_investments, only: [:destroy, :show]

  devise_for :users
	root to: 'user_scenarios#index'
end

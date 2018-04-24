Rails.application.routes.draw do
  resources :add_investment_months
  resources :tier_literals

  resources :user_scenarios do 
  	resource :add_investment, except: [:update]
  end

  resources :add_investments, only: [:update]





  devise_for :users
	root to: 'user_scenarios#index'
end

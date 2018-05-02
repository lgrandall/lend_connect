Rails.application.routes.draw do

  resources :tier_literals

  resources :user_scenarios do 
  	resource :add_investment_month, except: [:update]
  	resource :add_investment, except: [:update, :destroy]
  end

  resources :add_investments, only: [:update, :destroy]
  resources :add_investment_months, only: [:update]

  get 'home', to: 'pages#home'

  devise_for :users
	root to: 'pages#home'

	
end

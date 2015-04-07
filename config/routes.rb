Rails.application.routes.draw do
	resources :tasks do

  	post 'win', on: :collection
end

root 'tasks#index'
end

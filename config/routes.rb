Rails.application.routes.draw do
  resources :properties do
  	collection do
	    match 'search' => 'properties#search', via: [:get, :post], as: :search
	end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

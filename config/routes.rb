Rails.application.routes.draw do
	constraints subdomain: 'www' do
	  get ':any', to: redirect(subdomain: nil, path: '/%{any}'), any: /.*/
	end
	resources :rsvps

	root 'rsvps#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'sites/index'

	constraints subdomain: 'www' do
	  get ':any', to: redirect(subdomain: nil, path: '/%{any}'), any: /.*/
	end
	resources :rsvps
	root 'sites#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

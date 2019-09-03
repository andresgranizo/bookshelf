# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
root to: 'home#index'
get '/temperature', to: 'home#index'
post '/weather', to: 'weather#search'
get '/results', to: 'weather#results'

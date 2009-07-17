ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :sessions

  map.resources :formularios, :member => {:print => :get}

  map.resources :areas, :member => {:seleccionar => :get}

  map.resources :niveles

  map.resources :tipos

  map.resources :documentos

  map.root :controller => 'formularios'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

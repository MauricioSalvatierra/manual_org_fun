ActionController::Routing::Routes.draw do |map|
  map.resources :formularios

  map.resources :areas, :member => {:seleccionar => :get}

  map.resources :niveles

  map.resources :tipos

  map.resources :documentos

map.root :controller => :documentos

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

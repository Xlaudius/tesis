Rails.application.routes.draw do
 
  devise_for :users, controllers: {
              registrations: 'users/registrations'
  }

  devise_scope :user do
    authenticated :user do
      root 'assessments#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :property_closets
  resources :closets
  resources :property_housing_qualities
  resources :housing_qualities
  resources :property_maintenances
  resources :maintenances
  resources :property_furnitures
  resources :furniture_covers
  resources :furnitures
  resources :property_doors
  resources :door_frames
  resources :doors
  resources :property_windows
  resources :windows
  resources :property_heatings
  resources :heatings
  resources :property_dry_walls
  resources :dry_walls

  resources :between_floor_slaps
  resources :pools
  resources :property_pavements
  resources :pavements
  resources :service_yards
  resources :property_sectors
  resources :sectors
  resources :property_sec_characteristics
  resources :sector_characteristics
  resources :property_street_locations
  resources :street_locations
  resources :property_land_shapes
  resources :land_shapes
  resources :property_structures
  resources :structures
  resources :property_extern_terminations
  resources :external_terminations
  resources :property_covers
  resources :covers
  resources :property_water_rain_ducts
  resources :water_rain_ducts
  resources :property_roofings
  resources :roofings
  resources :property_exterior_closures
  resources :exterior_closures
  resources :property_interior_closures
  resources :interior_closures
  resources :property_sheds
  resources :shed_materials
  resources :sheds
  resources :property_toilet_artifacts
  resources :qualities
  resources :toilet_artifacts
  resources :property_gas
  resources :gas
  resources :property_stairs
  resources :stairs
  resources :property_enlar_qualities
  resources :enlargements_qualities
  resources :property_drinking_waters
  resources :drinking_waters
  resources :property_sewerages
  resources :sewerages
  resources :property_electricities
  resources :electricities
  resources :property_sidewalks
  resources :side_walks
  resources :property_roads
  resources :roads
  resources :property_rols
  resources :provinces
  resources :cities
  resources :regions
  resources :property_property_types
  resources :property_types
  


  resources :assessments 
  resources :properties 
  resources :property_between_floor_slaps


  
  resources :owners
  resources :states
  resources :clients
  resources :client_types

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

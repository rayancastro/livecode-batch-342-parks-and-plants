Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: :create
  end

  resources :plants, only: :destroy do
    resources :plant_tags, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



# /plants/:plant_id/plant_tags/new

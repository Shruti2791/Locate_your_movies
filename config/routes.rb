Rails.application.routes.draw do
  mount Documentation::Engine => "/docs"

  resources :locations, only: [] do
    get :movies, on: :member
    get :ids, on: :collection
  end

  resources :movies, only: [] do
    get :locations, on: :member
    get :ids, on: :collection
  end 
end

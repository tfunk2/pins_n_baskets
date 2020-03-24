Rails.application.routes.draw do
  resources :golf_reviews, except: [:new, :edit]
  resources :disc_golf_reviews, except: [:new, :edit]
  resources :disc_golf_courses, only: [:index, :show]
  resources :golf_courses, only: [:index, :show]
  resources :users, except: [:new, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :api do
    resources :charts, :songs 
  end
end

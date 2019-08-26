Rails.application.routes.draw do
 
  root "billboards#index"
  resources :artists do
    resources :songs
end

  resources :billboards do
    resources :songs
  
  end 
end

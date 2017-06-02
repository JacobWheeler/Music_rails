Rails.application.routes.draw do

root 'billboards#index'

resources :billboards
resources :artist
resources :song   

end

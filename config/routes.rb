Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

   get 'pages/homepage' ,  to: 'pages#homepage'

   get 'pages/about' ,  to: 'pages#about'


  # Defines the root path route ("/")
  # root "articles#index"
end

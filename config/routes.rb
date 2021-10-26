Rails.application.routes.draw do

    # get "/lessons/new"
    # get 'lessons/new'

    root :to => "pages#home"
    resources :users

    get "/login" => 'session#new'
    post "login" => 'session#create'
    delete '/login'=> 'session#destroy'

    resources :bookings
    resources :lessons
    get "/admin" =>  'admin#home'
    get '/bookings' => 'bookings#home'
    get '/lessons' => 'lessons#home'
    get '/users' => 'users#home'
end

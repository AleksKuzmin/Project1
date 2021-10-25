Rails.application.routes.draw do
    # get "/lessons/new"
    # get 'lessons/new'

    root :to => "pages#home"
    resources :users, :only => [:index, :new, :create, :show]

    get "/login" => 'session#new'
    post "login" => 'session#create'
    delete '/login'=> 'session#destroy'

    resources :bookings, :only => [:new, :create]
    resources :lessons
    get "/admin" =>  'admin#home'
    get '/bookings' => 'bookings#home'
    get '/lessons' => 'lessons#home'
end

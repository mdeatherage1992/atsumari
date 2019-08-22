Rails.application.routes.draw do


  devise_for :users

  get "/gambling/rankings", to: "pages#gambling_rankings"
  get "/gambling/profiles", to: "pages#gambling_profiles"
  get "/politics/rankings", to: "pages#politics_rankings"
  get "/finance/rankings", to: "pages#finance_rankings"
  get "/finance/profiles", to: "pages#finance_profiles"
  get "/politics/profiles", to: "pages#politics_profiles"
  get "/sports/rankings", to: "pages#sports_rankings"
  get "/sports/profiles", to: "pages#sports_profiles"
  get "/sports/rooms", to: "pages#sports_rooms"
  get "/finance/rooms", to: "pages#finance_rooms"
  get "/politics/rooms", to: "pages#politics_rooms"
  get "/gambling/rooms", to: "pages#gambling_rooms"
  get "/profiles", to: "pages#profiles"


  resources :rooms do
    resources :privileges
    resources :activities
    resources :posts
  end

  resources :users, only: [] do
    resources :profiles
    get "/spectations", to: "pages#spectations"
    get "/rooms", to: "users#rooms"
  end

  root to: 'pages#shinpi'



end

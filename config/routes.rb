Chatterbox::Application.routes.draw do

  resources :posts
  resources :topics
  resources :forums

  root :to => "forums#index"

end

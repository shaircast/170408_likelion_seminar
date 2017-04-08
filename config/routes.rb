Rails.application.routes.draw do
  get 'peachter/index'
  post '/sendTweet' => 'peachter#sendTweet'
  #get 'apeachbook/index'
  #get 'apeachbook/create'
  root 'peachter#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
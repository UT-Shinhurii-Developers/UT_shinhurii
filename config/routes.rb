Rails.application.routes.draw do
  get 'user/new' => 'user#new'
  post 'user/create' => 'user#create'
  get 'user/:name' => 'user#mypage'
  get 'login_form' => 'user#login_form'
  post 'login' => 'user#login'
  post 'logout' => 'user#logout'

  get 'top' => 'home#top'
  get 'input/:class' => 'home#input'
  get 'result' => 'home#result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

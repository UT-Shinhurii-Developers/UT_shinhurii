Rails.application.routes.draw do
  get 'user/new' => 'user#new'
  post 'user/create' => 'user#create'
  get 'user/create' => 'user#create'
  get 'user/:name' => 'user#mypage'
  get 'login_form' => 'user#login_form'
  post 'login' => 'user#login'
  get 'login' => 'user#login'
  post 'logout' => 'user#logout'

  get 'top' => 'home#top'
  get 'input/:class' => 'home#input'
  get 'result' => 'home#result'

  get 'add/:class' => 'user#add'

  post 'score/destroy_all' => 'score#destroy_all'
  post 'score/:class_type' => 'score#create'
  get 'score/:class_type' => 'score#create'
  post 'score/:class_type/mypage' => 'score#create_mypage'
  get 'score/:class_type/mypage' => 'score#create_mypage'
  post 'score/:id/destroy' => 'score#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

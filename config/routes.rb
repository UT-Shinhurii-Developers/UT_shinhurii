Rails.application.routes.draw do
  devise_for :users, :controllers => {
  :sessions => 'users/sessions',
  :registrations => 'users/registrations'
  }
  get 'users' => 'users/sign_up'

  get 'inquiry/index'

  post 'user/department' => 'user#department'
  get 'user/department' => 'input#department'

  get 'user/new' => 'user#new'
  post 'user/create' => 'user#create'
  get 'user/create' => 'user#create'
  get 'user/mypage' => 'user#mypage'
  get 'login_form' => 'user#login_form'
  post 'login' => 'user#login'
  get 'login' => 'user#login'
  post 'logout' => 'user#logout'

  get '/' => 'home#index'
  get 'input/department' => 'home#department'
  get 'input/:class' => 'home#input'
  get 'add/:class_add' => 'home#input'
  get 'result' => 'home#result'

  get 'user/:id/edit' => 'user#edit'

  post 'score/destroy_all' => 'score#destroy_all'
  post 'score/:class_type' => 'score#create'
  get 'score/:class_type' => 'score#create'
  post 'score/:class_type/mypage' => 'score#create_mypage'
  get 'score/:class_type/mypage' => 'score#create_mypage'
  post 'score/:id/destroy' => 'score#destroy'
  post 'score/:id/update' => 'score#update'

  get 'inquiry' => 'inquiry#index' #入力画面
  post 'inquiry/confirm' => 'inquiry#confirm' #確認画面
  get 'inquiry/confirm' => 'inquiry#index'
  post 'inquiry/thanks' => 'inquiry#thanks' #送信完了画面
  get 'inquiry/thanks' => 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

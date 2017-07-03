Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/index'
  post 'welcome/check'
  resources :students
  resources :welcome
  root 'welcome#index'
  get 'students/index'
end

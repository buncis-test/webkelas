Rails.application.routes.draw do
  root  'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  devise_scope :user do
    get 'sign_in' => 'devise/sessions#new'
    get 'sign_up' => 'devise/registrations#new'
  end
  
  devise_for :users
end

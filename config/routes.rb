Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :professionals
  ActiveAdmin.routes(self)
  devise_for :users
  # mount MailPreview => 'mail_view' if Rails.env.development?

  namespace :user do
    resources :jobs
  end
end

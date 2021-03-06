# Route prefixes use a single letter to allow for vanity urls of two or more characters
Rails.application.routes.draw do



  authenticate :user, lambda { |user| user.is_admin? } do
    get 'reports' => 'reports#overall', as: 'reports'
    get 'reports/ymd'  => 'reports#ymd', as: 'report_ymd'
    get 'reports/received_week'  => 'reports#received_week', as: 'report_received_last_week'
    get 'members/:year/:month'  => 'members#index', as: 'members_month'
    get 'members/:year'  => 'members#index', as: 'members_year'
    resources :guests
    resources :members
    mount Blazer::Engine, at: "blazer"
    mount RailsAdmin::Engine => '/admin', :as => 'rails_admin' if defined? RailsAdmin
  end

  get '/home' => 'users#show', as: 'user_home'

  if defined? Sidekiq
    require 'sidekiq/web'
    authenticate :user, lambda {|u| u.is_admin? } do
      mount Sidekiq::Web, at: '/admin/sidekiq/jobs', as: :sidekiq
    end
  end


  # Static pages
  match '/error' => 'pages#error', via: [:get, :post], as: 'error_page'

  # Devise
  devise_prefix = Rails.application.config.auth.devise.path_prefix
  devise_for :users, path: devise_prefix,
    controllers: {registrations: 'users/registrations', sessions: 'users/sessions',
      passwords: 'users/passwords', confirmations: 'users/confirmations', unlocks: 'users/unlocks'},
    path_names: {sign_up: 'signup', sign_in: 'login', sign_out: 'logout'}
  devise_scope :user do
    get "#{devise_prefix}/after" => 'users/registrations#after_auth', as: 'user_root'
  end
  get devise_prefix => redirect('/a/signup')

  # User
  resources :users, path: 'u', only: :show do
    resources :authentications, path: 'accounts'
  end

  # Dummy preview pages for testing.
  get '/p/test' => 'pages#test', as: 'test'
  get '/p/email' => 'pages#email' if ENV['ALLOW_EMAIL_PREVIEW'].present?

  root 'pages#home'
end

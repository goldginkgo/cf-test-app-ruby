Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      get 'cf_envs', to: 'api#cf_envs'
      get 'app_name', to: 'api#app_name'
      get 'space_name', to: 'api#space_name'
    end
    root 'v1/api#index'
  end
end

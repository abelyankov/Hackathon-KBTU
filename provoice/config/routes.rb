Rails.application.routes.draw do
  devise_for :experts
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope :api, defaults: { format: :json } do

      get '/courses' => 'api/courses#list'
      post '/course/:course_id/user/:user_id' => 'api/students#create'

  end
end

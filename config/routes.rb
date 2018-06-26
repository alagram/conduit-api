Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }

    resource :user, only: [:show, :update]

    resources :profiles, params: :username, only: [:show]

    resources :articles, params: :slug, except: [:edit, :new]
  end
end

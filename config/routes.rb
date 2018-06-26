Rails.application.routes.draw do
  scope :api, defaults: { format: :josn } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }

    resource :user, only: [:show, :update]
  end
end

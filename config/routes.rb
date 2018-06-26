Rails.application.routes.draw do
  scope :api, defaults: { format: :josn } do
    devise_for :users
  end
end

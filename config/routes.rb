Rails.application.routes.draw do
  devise_for :users
  get 'parks/index'
 root to: "parks#index"
end

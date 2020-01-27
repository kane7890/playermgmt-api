Rails.application.routes.draw do
  scope :api do
    resources :coaches, except: [:new, :edit]
    resources :players, except: [:new, :edit]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

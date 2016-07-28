Rails.application.routes.draw do
  root "dashboard#index"

  resource :feedback, only: %i(new create)
end

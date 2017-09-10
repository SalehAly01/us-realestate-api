# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :deals
  resources :deals do
    collection do
      post :search
    end
  end
end

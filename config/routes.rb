# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'house#index'

  resources :house, :flat, :lodger, :payment
end

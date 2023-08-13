Rails.application.routes.draw do
  root 'songs#index'
  get 'songs/result', to: 'songs#result'
  post 'songs/result', to: 'songs#result'
end
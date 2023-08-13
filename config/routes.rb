Rails.application.routes.draw do
  get 'staticpages/top'
  root 'songs#index'
  get 'songs/result', to: 'songs#result'
  post 'songs/result', to: 'songs#result'
end
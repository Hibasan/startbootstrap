Rails.application.routes.draw do
  root to: 'straps#top'
  get '/onsen', to: 'straps#top'
  get '/indexindex', to: 'straps#top'
  get '/manifesuto', to: 'straps#top'
  get '/サウナ行きたい', to: 'straps#top'
  get '/blogs', to: 'straps#top'

  resources :straps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

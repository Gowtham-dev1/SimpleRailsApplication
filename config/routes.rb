Rails.application.routes.draw do
  resources :note1s
  get "/", :to => "note#index"
  get "/note/:id", :to => "note#show"
  post "/note/create", :to => 'note#create'
  post "/note/delete", :to => 'note#delete'
end
